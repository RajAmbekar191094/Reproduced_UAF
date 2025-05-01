// // // (C) Copyright Christian Bienia 2007
// // //  Use, modification and distribution are subject to the
// // //  Boost Software License, Version 1.0.
// // //
// // //  file : RWLock.h
// // //  author : Christian Bienia - cbienia@cs.princeton.edu
// // //  description : A read-write lock

// // #ifndef RWLOCK_H
// // #define RWLOCK_H

// // #if defined(HAVE_CONFIG_H)
// // # include "config.h"
// // #endif

// // #include <pthread.h>
// // #include <exception>

// // #include "LockTypes.h"


// // namespace threads {

// // //General rwlock exception
// // class RWLockException: public std::exception {
// //   public:
// //     virtual const char *what() const ;//throw() {return "Unspecified rwlock error";}
// // };

// // //RWLock initialization error
// // class RWLockInitException: public RWLockException {
// //   public:
// //     virtual const char *what() const noexcept override { return "Unspecified rwlock error"; }//throw() {return "Unspecified error while initializing rwlock";}
// // };

// // //RWLock destruction error
// // class RWLockDestroyException: public RWLockException {
// //   public:
// //     virtual const char *what() const  noexcept override { return "Unspecified rwlock error"; }//throw() {return "Unspecified error while destroying rwlock";}
// // };

// // //Resources exhausted
// // class RWLockResourceException: public RWLockException {
// //   public:
// //     virtual const char *what() const noexcept override { return "Unspecified rwlock error"; }//throw() {return "Insufficient resources";}
// // };

// // //General locking error
// // class RWLockLockingException: public RWLockException {
// //   public:
// //     virtual const char *what() const noexcept override { return "Unspecified rwlock error"; }//throw() {return "Unspecified locking error";}
// // };

// // //Deadlock detected
// // class RWLockDeadlockException: public RWLockLockingException {
// //   public:
// //     virtual const char *what() const noexcept override { return "Unspecified rwlock error"; }//throw() {return "Deadlock detected";}
// // };

// // //Unknown error
// // class RWLockUnknownException: public RWLockException {
// //   public:
// //     virtual const char *what() const noexcept override { return "Unspecified rwlock error"; }//throw() {return "Unknown error";}
// // };

// // //A standard rwlock
// // class RWLock: public RWLockType {
// //   public:
// //     RWLock() ;//throw(RWLockException);
// //     ~RWLock() ;//throw(RWLockException);

// //     //Enter a critical region for reading
// //     void ReadLock() ;//throw(RWLockException);
// //     //Try to acquire the lock for reading, return true if successful
// //     bool TryReadLock() ;//throw(RWLockException);
// //     //Enter a critical region for writing
// //     void WriteLock() ;//throw(RWLockException);
// //     //Try to acquire the lock for writing, return true if successful
// //     bool TryWriteLock() ;//throw(RWLockException);
// //     //Leave a critical region
// //     void Unlock() ;//throw(RWLockException);

// //   private:
// //     pthread_rwlock_t l;
// // };

// // } //namespace threads

// // #endif //RWLOCK_H
// #ifndef RWLOCK_H
// #define RWLOCK_H

// #if defined(HAVE_CONFIG_H)
// # include "config.h"
// #endif

// #if defined(HAVE_LIBPTHREAD)
// # include <pthread.h>
// #else
// # error "This code is only supported on systems with pthreads."
// #endif

// #include <exception>

// namespace threads {

// // General RWLock exception
// class RWLockException: public std::exception {
// public:
//     virtual const char *what() const noexcept override {
//         return "Unspecified rwlock error";
//     }
// };

// // RWLock init error
// class RWLockInitException: public RWLockException {
// public:
//     virtual const char *what() const noexcept override {
//         return "Error initializing rwlock";
//     }
// };

// // RWLock destruction error
// class RWLockDestroyException: public RWLockException {
// public:
//     virtual const char *what() const noexcept override {
//         return "Error destroying rwlock";
//     }
// };

// // RWLock locking error
// class RWLockLockingException: public RWLockException {
// public:
//     virtual const char *what() const noexcept override {
//         return "Error locking rwlock";
//     }
// };

// // RWLock resource error
// class RWLockResourceException: public RWLockException {
// public:
//     virtual const char *what() const noexcept override {
//         return "Insufficient resources for rwlock";
//     }
// };

// // RWLock unknown error
// class RWLockUnknownException: public RWLockException {
// public:
//     virtual const char *what() const noexcept override {
//         return "Unknown rwlock error";
//     }
// };

// class RWLock {
// public:
//     RWLock();                     // Constructor
//     ~RWLock();                    // Destructor

//     void LockRead();              // Acquire read lock
//     void LockWrite();             // Acquire write lock
//     void Unlock();                // Release lock

// private:
//     // pthread_rwlock_t rwlock;
//     pthread_rwlock_t l;
// };

// } // namespace threads

// #endif // RWLOCK_H

#ifndef RWLOCK_H
#define RWLOCK_H

#include <pthread.h>
#include <exception>

namespace threads {

// Base RWLock exception
class RWLockException : public std::exception {
public:
    virtual const char *what() const noexcept override { return "RWLock error"; }
};

// Specific exceptions
class RWLockInitException : public RWLockException {
public:
    const char *what() const noexcept override { return "Failed to initialize RWLock"; }
};

class RWLockDestroyException : public RWLockException {
public:
    const char *what() const noexcept override { return "Failed to destroy RWLock"; }
};

class RWLockLockingException : public RWLockException {
public:
    const char *what() const noexcept override { return "Failed to lock or unlock RWLock"; }
};

// RWLock class
class RWLock {
public:
    RWLock();
    ~RWLock() noexcept;

    void LockRead();
    void LockWrite();
    void Unlock();

private:
    pthread_rwlock_t rwlock;
};

} // namespace threads

#endif // RWLOCK_H


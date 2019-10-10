.class public Lcom/xiaomi/passport/uicontroller/PhoneLoginController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PhoneLoginController"

.field private static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;

    invoke-direct {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
    .registers 2

    .line 432
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/k;

    if-eqz v0, :cond_7

    .line 433
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->e:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_33

    .line 434
    :cond_7
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_e

    .line 435
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->d:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_33

    .line 436
    :cond_e
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/c;

    if-eqz v0, :cond_15

    .line 437
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_33

    .line 438
    :cond_15
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/a;

    if-eqz v0, :cond_1c

    .line 439
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->f:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_33

    .line 440
    :cond_1c
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/a/h;

    if-eqz v0, :cond_23

    .line 441
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->g:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_33

    .line 442
    :cond_23
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/a/l;

    if-eqz v0, :cond_2a

    .line 443
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->j:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_33

    .line 444
    :cond_2a
    instance-of p0, p0, Lcom/xiaomi/accountsdk/account/a/g;

    if-eqz p0, :cond_31

    .line 445
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->i:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    goto :goto_33

    .line 447
    :cond_31
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    :goto_33
    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/passport/data/LoginPreference;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    .line 384
    :cond_4
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;)V

    move-object p2, v0

    .line 407
    :goto_a
    new-instance v0, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$16;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$16;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 414
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Ljava/lang/Throwable;)Z
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/Throwable;)Z
    .registers 3

    .line 420
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/a;

    if-eqz v0, :cond_9

    .line 421
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/a;

    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/account/a/a;->d:Z

    goto :goto_1c

    .line 422
    :cond_9
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/d;

    if-eqz v0, :cond_12

    .line 423
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/d;

    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/account/a/d;->c:Z

    goto :goto_1c

    .line 424
    :cond_12
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/r;

    if-eqz v0, :cond_1b

    .line 425
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/r;

    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/account/a/r;->c:Z

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_17

    .line 204
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    .line 246
    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$8;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$8;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 252
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p2

    .line 202
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should implements login callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_17

    .line 154
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    .line 180
    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 195
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p2

    .line 152
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should implements login callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_17

    .line 260
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;)V

    .line 287
    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$10;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$10;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 294
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p2

    .line 258
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should implements register callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_17

    .line 108
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;)V

    .line 139
    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 145
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p2

    .line 106
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should implements phone user info callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_17

    .line 65
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;)V

    .line 93
    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$2;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 100
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p2

    .line 63
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should implements login callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_17

    .line 343
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;)V

    .line 369
    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$14;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$14;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 375
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p2

    .line 341
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should implement set password callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_17

    .line 304
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;

    invoke-direct {v0, p0, p3}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;)V

    .line 328
    new-instance p3, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$12;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;)V

    invoke-direct {p3, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    .line 334
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p3

    .line 302
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should implement send set pwd ticket callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;

    return-void
.end method

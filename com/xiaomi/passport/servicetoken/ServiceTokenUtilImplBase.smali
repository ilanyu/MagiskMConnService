.class abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/Executor;
    .registers 1

    .line 11
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .registers 4

    .line 28
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    .line 33
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .registers 4

    .line 17
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/xiaomi/accountsdk/futureservice/a<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;)V

    .line 43
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->a()Lcom/xiaomi/accountsdk/futureservice/a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method protected abstract b(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method protected abstract c(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end method

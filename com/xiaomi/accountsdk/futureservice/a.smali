.class public abstract Lcom/xiaomi/accountsdk/futureservice/a;
.super Lcom/xiaomi/accountsdk/futureservice/ClientFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
        "TV;TV;>;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/xiaomi/accountsdk/futureservice/a;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/futureservice/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/accountsdk/futureservice/a<",
            "TV;>;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/xiaomi/accountsdk/futureservice/a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;-><init>(Lcom/xiaomi/accountsdk/futureservice/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public a(Ljava/util/concurrent/ExecutionException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not going here"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-object p1
.end method

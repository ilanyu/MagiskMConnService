.class public Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;
.super Lcom/xiaomi/passport/uicontroller/UIControllerFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationAuthFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/UIControllerFuture<",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback<",
            "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/UIControllerFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .registers 2

    return-object p1
.end method

.method public a(Ljava/util/concurrent/ExecutionException;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/RemoteException;

    if-eqz v0, :cond_f

    .line 293
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteException;

    throw p1

    .line 295
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown exception met: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 284
    check-cast p1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;->a(Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object p1

    return-object p1
.end method

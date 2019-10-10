.class public final Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;
.super Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PasswordLoginFuture"
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/e;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1
    :try_end_4
    .catch Lcom/xiaomi/accountsdk/account/a/k; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 165
    :catch_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "this should not be happen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/concurrent/ExecutionException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/e;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;->a(Ljava/util/concurrent/ExecutionException;)V
    :try_end_3
    .catch Lcom/xiaomi/accountsdk/account/a/k; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 183
    :catch_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "this should not be happen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    check-cast p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1
.end method

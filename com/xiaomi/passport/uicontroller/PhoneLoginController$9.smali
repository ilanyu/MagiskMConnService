.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;)V
    .registers 3

    .line 260
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 264
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 265
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_4a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_5d

    :catch_c
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "registerByPhone"

    .line 270
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 272
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/x;

    if-eqz v1, :cond_22

    .line 273
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->a()V

    goto :goto_5d

    .line 274
    :cond_22
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/v;

    if-eqz v1, :cond_2c

    .line 275
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->b()V

    goto :goto_5d

    .line 276
    :cond_2c
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/s;

    if-eqz v1, :cond_3c

    .line 277
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->h:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 278
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_5d

    .line 280
    :cond_3c
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_5d

    :catch_4a
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "registerByPhone"

    .line 267
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

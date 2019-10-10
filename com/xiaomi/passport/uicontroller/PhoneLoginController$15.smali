.class final Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Lcom/xiaomi/passport/data/LoginPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

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
            "Lcom/xiaomi/passport/data/LoginPreference;",
            ">;)V"
        }
    .end annotation

    .line 389
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/data/LoginPreference;

    .line 390
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->a(Lcom/xiaomi/passport/data/LoginPreference;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_43

    :catch_c
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "getPhoneLoginConfigOnLine"

    .line 395
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 397
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/i;

    if-eqz v1, :cond_22

    .line 398
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->a()V

    goto :goto_43

    .line 400
    :cond_22
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_43

    :catch_30
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "getPhoneLoginConfigOnLine"

    .line 392
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.class final Lcom/xiaomi/passport/servicetoken/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 4

    .line 14
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2a

    check-cast p0, Landroid/app/Activity;

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2a

    if-eqz p1, :cond_2a

    iget-object v0, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->k:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-ne v0, v1, :cond_2a

    iget-object v0, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Landroid/content/Intent;

    if-nez v0, :cond_19

    goto :goto_2a

    .line 24
    :cond_19
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 25
    invoke-static {p1, p0}, Lcom/xiaomi/passport/servicetoken/f;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Landroid/app/Activity;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0

    :cond_29
    return-object p1

    :cond_2a
    :goto_2a
    return-object p1
.end method

.method private static a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Landroid/app/Activity;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 7

    .line 33
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    .line 34
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Landroid/content/Intent;

    const-string v2, "accountAuthenticatorResponse"

    new-instance v3, Lcom/xiaomi/passport/servicetoken/g;

    new-instance v4, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;

    invoke-direct {v4, p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V

    invoke-direct {v3, v4}, Lcom/xiaomi/passport/servicetoken/g;-><init>(Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0
.end method

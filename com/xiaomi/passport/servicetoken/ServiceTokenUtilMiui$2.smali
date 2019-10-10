.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

.field final synthetic b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .registers 5

    .line 68
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    iput-object p4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;-><init>(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V

    return-void
.end method


# virtual methods
.method protected synthetic d()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->e()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    if-eqz v0, :cond_1a

    .line 73
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 74
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 75
    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto :goto_1c

    .line 79
    :cond_1a
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 81
    :goto_1c
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/IPassportServiceTokenService;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/IPassportServiceTokenService;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

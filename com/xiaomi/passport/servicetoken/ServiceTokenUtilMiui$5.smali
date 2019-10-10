.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->c(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Landroid/content/Context;)V
    .registers 5

    .line 161
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    iput-object p4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->a:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

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

    .line 161
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->e()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    invoke-interface {v0}, Lcom/xiaomi/passport/IPassportServiceTokenService;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 165
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/IPassportServiceTokenService;->b(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0

    .line 166
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_44

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v0, "com.xiaomi"

    .line 167
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v3, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->b:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {v1, v3, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0

    .line 175
    :cond_44
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->c:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/xiaomi/accountsdk/utils/ab;
.super Lcom/xiaomi/accountsdk/utils/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "deviceId"

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/webkit/CookieManager;)V
    .registers 3

    .line 15
    invoke-super {p0, p2, p1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/CookieManager;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 3

    .line 25
    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 2

    .line 11
    invoke-super {p0, p1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.class public final Lcom/xiaomi/accountsdk/utils/ad;
.super Lcom/xiaomi/accountsdk/utils/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "userSpaceId"

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/webkit/CookieManager;)V
    .registers 3

    .line 12
    invoke-super {p0, p2, p1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/CookieManager;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .line 22
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 2

    .line 8
    invoke-super {p0, p1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/WebView;)V

    return-void
.end method

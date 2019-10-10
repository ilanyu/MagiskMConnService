.class public Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 33
    :cond_3
    new-instance v0, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->b:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->a(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/FidNonce;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 38
    :cond_11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 39
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;->a(Lcom/xiaomi/accountsdk/utils/FidNonce;Landroid/webkit/CookieManager;)V

    .line 41
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public final a(Lcom/xiaomi/accountsdk/utils/FidNonce;Landroid/webkit/CookieManager;)V
    .registers 5

    const-string v0, "fidNonce"

    .line 45
    iget-object v1, p1, Lcom/xiaomi/accountsdk/utils/FidNonce;->a:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fidNonceSign"

    .line 46
    iget-object p1, p1, Lcom/xiaomi/accountsdk/utils/FidNonce;->b:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

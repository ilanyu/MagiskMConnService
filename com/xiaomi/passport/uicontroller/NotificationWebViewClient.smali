.class public Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "passInfo"

.field private static final b:Ljava/lang/String; = "login-end"

.field private static final c:Ljava/lang/String; = "need-relogin"

.field private static final d:Ljava/lang/String; = "auth-end"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Landroid/webkit/CookieManager;

.field private g:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->e:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 25
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->f:Landroid/webkit/CookieManager;

    .line 26
    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->g:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 30
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->g:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->f:Landroid/webkit/CookieManager;

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "passInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "need-relogin"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 38
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->g:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;->a()V

    return v1

    :cond_2a
    const-string v2, "login-end"

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 41
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->g:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-interface {v0, p2, p1}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_40
    const-string v2, "auth-end"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 46
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->g:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-interface {p1, p2}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;->a(Ljava/lang/String;)V

    return v1

    .line 50
    :cond_4e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

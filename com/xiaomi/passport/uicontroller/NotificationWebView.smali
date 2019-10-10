.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;,
        Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "need_remove_all_cookies"

.field private static final b:Ljava/lang/String; = "NotificationWebView"


# instance fields
.field private final c:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->c:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    const-string v0, "notificationUrl should not be empty"

    .line 129
    invoke-static {p2, v0}, Lcom/xiaomi/passport/uicontroller/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notificationEndListener should not be null"

    .line 130
    invoke-static {p7, v0}, Lcom/xiaomi/passport/uicontroller/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context should not be null"

    .line 131
    invoke-static {p1, v0}, Lcom/xiaomi/passport/uicontroller/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->d:Ljava/lang/String;

    .line 134
    iput-boolean p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->e:Z

    .line 135
    iput-object p7, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->f:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    .line 136
    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->g:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->h:Ljava/lang/String;

    .line 138
    iput-object p6, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->i:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;Lcom/xiaomi/passport/uicontroller/NotificationWebView$1;)V
    .registers 9

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
    .registers 6

    const-string v0, "need_remove_all_cookies"

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "notification_url"

    .line 71
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_show_skip_login"

    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "userId"

    .line 73
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "passToken"

    .line 74
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance v4, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    invoke-static {v1, v2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0, v3, p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 82
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "_device_name"

    .line 83
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "_provision"

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Intent;Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;)V
    .registers 4

    const-string v0, "notification_url"

    .line 65
    iget-object v1, p1, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "need_remove_all_cookies"

    .line 66
    iget-boolean p1, p1, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->b:Z

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "%s=%s;"

    const/4 v1, 0x2

    .line 225
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 226
    sget-object p3, Lcom/xiaomi/accountsdk/utils/c;->a:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/webkit/WebSettings;)V
    .registers 5

    .line 198
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "%s PassportSDK/NotificationWebView/%s"

    const/4 v2, 0x2

    .line 200
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/z;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2a

    .line 216
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 217
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "userId"

    .line 218
    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "passToken"

    .line 219
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    const-string v0, "NotificationWebView"

    const-string v1, "invalid notificationUrl"

    .line 146
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 150
    :cond_15
    iget-boolean v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->e:Z

    if-eqz v1, :cond_27

    .line 151
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 152
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 156
    :cond_27
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    .line 157
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 159
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 160
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 161
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 162
    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->a(Landroid/webkit/WebSettings;)V

    .line 164
    new-instance v1, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->f:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-direct {v1, v2, v0, v4}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 168
    new-instance v1, Lcom/xiaomi/accountsdk/utils/ab;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/ab;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/ab;->b(Landroid/webkit/WebView;)V

    .line 169
    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;->a(Landroid/webkit/WebView;)V

    .line 170
    new-instance v1, Lcom/xiaomi/accountsdk/utils/ad;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/ad;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/ad;->b(Landroid/webkit/WebView;)V

    .line 171
    new-instance v1, Lcom/xiaomi/accountsdk/utils/ac;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/ac;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/ac;->b(Landroid/webkit/WebView;)V

    .line 172
    new-instance v1, Lcom/xiaomi/accountsdk/utils/aa;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/aa;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->i:Ljava/util/Map;

    invoke-virtual {v1, p0, v2}, Lcom/xiaomi/accountsdk/utils/aa;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 174
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->h:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->loadUrl(Ljava/lang/String;)V

    return v3
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 181
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 183
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->c:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->c:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V

    .line 189
    iget-boolean v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->e:Z

    if-eqz v0, :cond_17

    .line 190
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 191
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 194
    :cond_17
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

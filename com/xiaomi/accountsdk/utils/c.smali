.class public abstract Lcom/xiaomi/accountsdk/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    sget-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    if-eqz v0, :cond_7

    const-string v0, ".account.preview.n.xiaomi.net"

    goto :goto_9

    :cond_7
    const-string v0, ".account.xiaomi.com"

    :goto_9
    sput-object v0, Lcom/xiaomi/accountsdk/utils/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_24

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_24

    :cond_f
    const-string v0, "%s=%s;"

    const/4 v1, 0x2

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    sget-object p2, Lcom/xiaomi/accountsdk/utils/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected final a(Landroid/webkit/CookieManager;Ljava/lang/String;)V
    .registers 4

    .line 34
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 23
    :cond_e
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 24
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

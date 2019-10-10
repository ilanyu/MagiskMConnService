.class public Lcom/xiaomi/accountsdk/utils/ac;
.super Lcom/xiaomi/accountsdk/utils/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "NativeUserAgent"

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/webkit/CookieManager;)V
    .registers 4

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 20
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p2, p1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/CookieManager;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 3

    .line 32
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 2

    .line 13
    invoke-super {p0, p1}, Lcom/xiaomi/accountsdk/utils/c;->a(Landroid/webkit/WebView;)V

    return-void
.end method

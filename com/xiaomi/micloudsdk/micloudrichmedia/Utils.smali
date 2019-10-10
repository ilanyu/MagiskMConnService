.class Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;,
        Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/xiaomi/micloudsdk/b/a;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

.field private f:I

.field private g:Lcn/kuaipan/kss/b/b;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 74
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->h:Ljava/lang/String;

    return-void

    .line 72
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The userId and authtoken should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->f:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Landroid/content/Context;)I
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->g:Lcn/kuaipan/kss/b/b;

    if-nez v0, :cond_1a

    .line 559
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b:Lcom/xiaomi/micloudsdk/b/a;

    invoke-static {v0, p1, v1}, Lcn/kuaipan/kss/b/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;)Lcn/kuaipan/kss/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->g:Lcn/kuaipan/kss/b/b;
    :try_end_e
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    move-exception p1

    .line 562
    new-instance p2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(I)V

    throw p2

    .line 565
    :cond_1a
    :goto_1a
    new-instance v0, Lcn/kuaipan/kss/b/f;

    invoke-direct {v0}, Lcn/kuaipan/kss/b/f;-><init>()V

    .line 566
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->g:Lcn/kuaipan/kss/b/b;

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/kss/b/f;->a(Landroid/content/Context;Lcn/kuaipan/kss/b/b;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lorg/json/JSONObject;Ljava/io/File;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p1

    .line 567
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;->a(Lcn/kuaipan/kss/KssDef$KssAPIResult;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    return-object p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serviceToken="

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1b

    const-string p2, "; cUserId="

    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .registers 4

    const-string v0, "Register network connectivity changed receiver"

    .line 89
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    if-nez v0, :cond_11

    .line 91
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    .line 93
    :cond_11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 2

    .line 408
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private a(Lorg/json/JSONObject;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lorg/apache/commons/codec/DecoderException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lorg/apache/commons/codec/DecoderException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 521
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    move-result-object p1

    .line 522
    iget-object p2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->d:Ljava/lang/String;

    if-eqz p2, :cond_25

    iget-object p2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->b:Ljava/lang/String;

    if-eqz p2, :cond_25

    .line 523
    new-instance p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;

    iget-object v0, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 525
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b:Lcom/xiaomi/micloudsdk/b/a;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method private static b(Landroid/content/Context;)I
    .registers 2

    const-string v0, "connectivity"

    .line 414
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, -0x1

    if-nez p0, :cond_c

    return v0

    .line 417
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    .line 420
    :cond_13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0
.end method

.method private b(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 531
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    move-result-object p1

    return-object p1
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 537
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "downloadurl"

    move-object v0, p2

    move-object p2, p1

    goto :goto_13

    :cond_b
    const-string p2, "mfs"

    .line 541
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "tmpUrl"

    .line 544
    :goto_13
    new-instance v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V

    if-eqz p2, :cond_39

    .line 546
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->d:Ljava/lang/String;

    const-string v0, "ckey"

    .line 547
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->c:Ljava/lang/String;

    const-string v0, "fileId"

    .line 548
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->a:Ljava/lang/String;

    const-string p1, "fileSha1"

    .line 549
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->b:Ljava/lang/String;

    :cond_39
    return-object v1
.end method

.method private b()V
    .registers 3

    const-string v0, "Unregister network connectivity changed receiver"

    .line 99
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private c(Landroid/content/Context;)I
    .registers 6

    const-string v0, "connectivity"

    .line 425
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 427
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const v2, 0xc800

    if-eqz v1, :cond_28

    .line 428
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 429
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-nez v1, :cond_21

    const p1, 0x19000

    return p1

    .line 431
    :cond_21
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    return v2

    :cond_28
    const/4 v1, 0x0

    .line 439
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_30

    return v1

    .line 443
    :cond_30
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 444
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v0, :cond_4e

    .line 445
    invoke-static {p1}, Lcn/kuaipan/kss/c/b;->a(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object p1

    .line 446
    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->e:Lcn/kuaipan/kss/KssDef$NetState;

    const/16 v1, 0x5000

    if-ne p1, v0, :cond_43

    return v1

    .line 448
    :cond_43
    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->d:Lcn/kuaipan/kss/KssDef$NetState;

    if-eq p1, v0, :cond_4d

    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->c:Lcn/kuaipan/kss/KssDef$NetState;

    if-ne p1, v0, :cond_4c

    goto :goto_4d

    :cond_4c
    return v1

    :cond_4d
    :goto_4d
    return v2

    :cond_4e
    return v1
.end method

.method private c(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/j;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/micloudsdk/c/f;,
            Lcom/xiaomi/micloudsdk/c/e;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lcom/xiaomi/micloudsdk/c/d;,
            Lcom/xiaomi/micloudsdk/c/b;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 301
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->g()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a()I

    move-result v3

    if-ge v2, v3, :cond_149

    .line 302
    iget v7, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->f:I

    if-eqz v7, :cond_36

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current chunk size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->g()I

    move-result v3

    div-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chunk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 307
    :cond_36
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->h()Z

    move-result v2

    .line 308
    invoke-virtual {p1, v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->b(I)Z

    move-result v3

    .line 309
    new-instance v10, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;

    .line 310
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->g()I

    move-result v8

    iget-object v9, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->h:Ljava/lang/String;

    move-object v4, v10

    move-object v5, p1

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;ZIILjava/lang/String;)V

    if-eqz p2, :cond_5f

    .line 311
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5f

    const-string v4, ","

    .line 312
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shareTo"

    .line 313
    invoke-virtual {v10, v5, v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/f;

    .line 316
    :cond_5f
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b:Lcom/xiaomi/micloudsdk/b/a;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c:Ljava/lang/String;

    invoke-virtual {v10, v4, v5, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_141

    .line 318
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->a(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    move-result-object v4

    .line 321
    iget v5, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const v6, 0x13882

    if-eq v5, v6, :cond_77

    const/4 v1, 0x0

    .line 325
    :cond_77
    iget v5, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    if-nez v5, :cond_b7

    if-eqz v2, :cond_ae

    if-nez v3, :cond_ae

    .line 328
    iget-object v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    const-string v3, "tmpid"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->d:Ljava/lang/String;

    .line 330
    iget-object v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    const-string v3, "_hostingserver"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->e:Ljava/lang/String;

    .line 332
    iget-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->e:Ljava/lang/String;

    .line 333
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a6

    goto/16 :goto_2

    .line 334
    :cond_a6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Server error: The first chunk\'s response does not contain the tempid or hosting server"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ae
    if-eqz v3, :cond_2

    .line 338
    iget-object p1, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->a(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object p1

    return-object p1

    .line 340
    :cond_b7
    iget v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const v3, 0x13885

    if-ne v2, v3, :cond_c3

    .line 342
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->i()V

    goto/16 :goto_2

    .line 343
    :cond_c3
    iget v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    if-ne v2, v6, :cond_d9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_149

    const-wide/16 v2, 0x1388

    .line 350
    :try_start_cc
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_cc .. :try_end_cf} :catch_d3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_d3
    move-exception v2

    .line 353
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 355
    :cond_d9
    iget v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const v3, 0x13881

    if-eq v2, v3, :cond_139

    .line 357
    iget v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const v3, 0x13883

    if-eq v2, v3, :cond_11e

    .line 360
    iget v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const v3, 0x13884

    if-eq v2, v3, :cond_fe

    .line 363
    iget v2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const/16 v3, 0x2718

    if-eq v2, v3, :cond_f6

    goto/16 :goto_2

    .line 364
    :cond_f6
    new-instance p1, Lcom/xiaomi/micloudsdk/c/b;

    iget-object p2, v4, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_fe
    new-instance p2, Lcom/xiaomi/micloudsdk/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The file size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds the limit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/e;-><init>(Ljava/lang/String;)V

    throw p2

    .line 358
    :cond_11e
    new-instance p2, Lcom/xiaomi/micloudsdk/c/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t write file at offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/f;-><init>(Ljava/lang/String;)V

    throw p2

    .line 356
    :cond_139
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The file digest error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_141
    new-instance p1, Lcom/xiaomi/micloudsdk/c/g;

    const-string p2, "Cloud service fails when upload file"

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_149
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Read file error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_39

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 221
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 226
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->f:I

    .line 228
    iget p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->f:I

    if-eqz p1, :cond_1f

    return-void

    .line 229
    :cond_1f
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "Network is not connected"

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "The type %s is not supported"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The download parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lcom/xiaomi/micloudsdk/c/d;,
            Lcom/xiaomi/micloudsdk/c/b;
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->h:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b:Lcom/xiaomi/micloudsdk/b/a;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 473
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->a(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    move-result-object v0

    .line 474
    iget v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    if-nez v1, :cond_6a

    iget-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_6a

    .line 475
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_35

    .line 477
    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 478
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "shareId"

    goto :goto_3f

    .line 481
    :cond_35
    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "fileId"

    :goto_3f
    const/4 v2, 0x0

    if-eqz p2, :cond_5b

    .line 485
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    return-object p2

    .line 494
    :cond_4d
    new-instance p1, Lcom/xiaomi/micloudsdk/c/g;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "The local fileId is not accord with server fileId"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    const-string p2, "The local fileId %s unable to obtain the download"

    const/4 v0, 0x1

    .line 498
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    return-object v2

    .line 501
    :cond_6a
    iget p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const/16 v1, 0x2718

    if-ne p2, v1, :cond_78

    .line 502
    new-instance p1, Lcom/xiaomi/micloudsdk/c/b;

    iget-object p2, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :cond_78
    new-instance p2, Lcom/xiaomi/micloudsdk/c/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cloud service error on getDownloadUrl for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/g;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lcom/xiaomi/micloudsdk/c/d;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_3
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_c

    .line 133
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    :cond_c
    const-string v0, "mfs"

    .line 136
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2b

    :cond_1b
    const-string p3, "kss"

    .line 142
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_28

    .line 143
    invoke-direct {p0, p1, p2, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    return-object p1

    .line 146
    :cond_28
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->i:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    .line 137
    :cond_2b
    :goto_2b
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    .line 138
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 141
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    :try_end_3c
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_3 .. :try_end_3c} :catch_52
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3c} :catch_4b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3c} :catch_44
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 158
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1

    :catch_44
    move-exception p1

    .line 153
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4b
    move-exception p1

    .line 151
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_52
    move-exception p1

    .line 149
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method a(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/j;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/e;,
            Landroid/accounts/NetworkErrorException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lcom/xiaomi/micloudsdk/c/d;,
            Lcom/xiaomi/micloudsdk/c/b;
        }
    .end annotation

    if-nez p1, :cond_9

    const-string p1, "The file should not be null"

    .line 255
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->f:I

    .line 261
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->f:I

    if-eqz v0, :cond_8d

    .line 265
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a()V

    .line 268
    :try_start_18
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->j()V

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 271
    iget-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 272
    :cond_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The file already exist:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_45} :catch_74
    .catch Lcom/xiaomi/micloudsdk/c/f; {:try_start_18 .. :try_end_45} :catch_6f
    .catchall {:try_start_18 .. :try_end_45} :catchall_6d

    .line 287
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->k()V

    .line 288
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b()V

    return-object v0

    .line 277
    :cond_4c
    :try_start_4c
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object p2

    if-eqz p2, :cond_78

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The file upload success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_66} :catch_74
    .catch Lcom/xiaomi/micloudsdk/c/f; {:try_start_4c .. :try_end_66} :catch_6f
    .catchall {:try_start_4c .. :try_end_66} :catchall_6d

    .line 287
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->k()V

    .line 288
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b()V

    return-object p2

    :catchall_6d
    move-exception p2

    goto :goto_86

    :catch_6f
    move-exception p2

    .line 285
    :try_start_70
    invoke-virtual {p2}, Lcom/xiaomi/micloudsdk/c/f;->printStackTrace()V

    goto :goto_78

    :catch_74
    move-exception p2

    .line 283
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_6d

    .line 287
    :cond_78
    :goto_78
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->k()V

    .line 288
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b()V

    .line 290
    new-instance p1, Lcom/xiaomi/micloudsdk/c/g;

    const-string p2, "Cloud server fails when upload files"

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :goto_86
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->k()V

    .line 288
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b()V

    throw p2

    .line 262
    :cond_8d
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "Network is not connected"

    invoke-direct {p1, p2}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/xiaomi/micloudsdk/b/a;)V
    .registers 5

    if-eqz p1, :cond_17

    .line 83
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->c()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->d()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b:Lcom/xiaomi/micloudsdk/b/a;

    return-void

    .line 81
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The authtoken should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/j;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lcom/xiaomi/micloudsdk/c/d;,
            Lcom/xiaomi/micloudsdk/c/b;
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current chunk size is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->h:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/lang/String;)V

    if-eqz p2, :cond_30

    .line 379
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, ","

    .line 380
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "shareTo"

    .line 381
    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/f;

    .line 383
    :cond_30
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b:Lcom/xiaomi/micloudsdk/b/a;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, p2, v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_7a

    .line 386
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->a(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    move-result-object p2

    .line 387
    iget v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    if-nez v0, :cond_6c

    .line 388
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 389
    iget-object v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    const-string v1, "tmpid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->b(Ljava/lang/String;)V

    .line 390
    iget-object v0, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    const-string v1, "_hostingserver"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a(Ljava/lang/String;)V

    .line 392
    :cond_65
    iget-object p1, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->a(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object p1

    return-object p1

    .line 393
    :cond_6c
    iget p1, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const/16 v0, 0x2718

    if-ne p1, v0, :cond_7a

    .line 394
    new-instance p1, Lcom/xiaomi/micloudsdk/c/b;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_7a
    new-instance p1, Lcom/xiaomi/micloudsdk/c/g;

    const-string p2, "Cloud service error in check file exits"

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 572
    new-instance v2, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;

    invoke-direct {v2, p1, v1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :try_start_12
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b:Lcom/xiaomi/micloudsdk/b/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;Z)[B

    move-result-object p1
    :try_end_1e
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_12 .. :try_end_1e} :catch_34
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_12 .. :try_end_1e} :catch_2d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_1e} :catch_26
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_12 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    .line 583
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_26
    move-exception p1

    .line 581
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2d
    move-exception p1

    .line 579
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_34
    move-exception p1

    .line 577
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3b
    return-object v1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lcom/xiaomi/micloudsdk/c/d;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    :try_start_4
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_b

    return-object v0

    :cond_b
    const-string v1, "mfs"

    .line 177
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 178
    invoke-direct {p0, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lorg/json/JSONObject;)[B

    move-result-object p1

    return-object p1

    :cond_18
    const-string v1, "kss"

    .line 179
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 180
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1, p3, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1

    .line 182
    sget-object p2, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    :try_end_45
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_4 .. :try_end_45} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_45} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_45} :catch_7a
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_45} :catch_75

    if-ne p1, p2, :cond_79

    .line 185
    :try_start_47
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_64

    .line 186
    :try_start_4c
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    new-array p2, p2, [B

    .line 187
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_62

    .line 191
    :try_start_55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_61
    return-object p2

    :catchall_62
    move-exception p2

    goto :goto_66

    :catchall_64
    move-exception p2

    move-object p1, v0

    :goto_66
    if-eqz p1, :cond_6b

    .line 191
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 193
    :cond_6b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_74
    throw p2
    :try_end_75
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_55 .. :try_end_75} :catch_88
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_55 .. :try_end_75} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_55 .. :try_end_75} :catch_7a
    .catch Ljava/net/URISyntaxException; {:try_start_55 .. :try_end_75} :catch_75

    :catch_75
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_79
    return-object v0

    :catch_7a
    move-exception p1

    .line 206
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_81
    move-exception p1

    .line 204
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_88
    move-exception p1

    .line 202
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

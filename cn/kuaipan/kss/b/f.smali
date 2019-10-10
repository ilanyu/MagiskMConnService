.class public Lcn/kuaipan/kss/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "type"

.field public static final c:Ljava/lang/String; = "data"

.field public static final d:Ljava/lang/String; = "code"

.field public static final e:Ljava/lang/String; = "signature"

.field public static final f:Ljava/lang/String; = "retry"

.field public static final g:Ljava/lang/String; = "retryAfter"

.field public static final h:Ljava/lang/String; = "needReRequest"

.field public static final i:I = 0x0

.field public static final j:I = 0x3

.field public static final k:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/v1/gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/kss/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;
    .registers 3

    const-string v0, "connectivity"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_4a

    .line 107
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 108
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4a

    :cond_1b
    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 114
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_47

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2d

    goto :goto_47

    .line 118
    :cond_2d
    invoke-static {p0}, Lcn/kuaipan/kss/c/b;->a(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object p0

    .line 119
    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->e:Lcn/kuaipan/kss/KssDef$NetState;

    if-ne p0, v0, :cond_38

    .line 120
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->e:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    .line 121
    :cond_38
    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->d:Lcn/kuaipan/kss/KssDef$NetState;

    if-eq p0, v0, :cond_44

    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->c:Lcn/kuaipan/kss/KssDef$NetState;

    if-ne p0, v0, :cond_41

    goto :goto_44

    .line 124
    :cond_41
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->e:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    .line 122
    :cond_44
    :goto_44
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->d:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    .line 115
    :cond_47
    :goto_47
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->a:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    :cond_4a
    :goto_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;)Lcn/kuaipan/kss/b/b;
    .registers 4
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

    const/4 v0, 0x2

    .line 132
    invoke-static {p0, p1, p2, v0}, Lcn/kuaipan/kss/b/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;I)[Ljava/lang/String;

    move-result-object p0

    .line 133
    array-length p1, p0

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_a
    new-instance p1, Lcn/kuaipan/kss/b/b;

    invoke-direct {p1}, Lcn/kuaipan/kss/b/b;-><init>()V

    .line 137
    invoke-virtual {p1, p0}, Lcn/kuaipan/kss/b/b;->a([Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;IZ)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/b/a;",
            "IZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

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

    if-nez p1, :cond_7

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :cond_7
    invoke-static {p0, p1, p4, p5, p3}, Lcn/kuaipan/kss/b/f;->a(Ljava/lang/String;Ljava/util/ArrayList;IZLcom/xiaomi/micloudsdk/b/a;)V

    .line 220
    sget-object p4, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->a:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    iget-object p5, p3, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {p4, p0, p1, p5}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 222
    new-instance p5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v0, "signature"

    invoke-direct {p5, v0, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->c()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->d()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {p2, p1, p3}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;)Lorg/apache/http/Header;

    move-result-object p1

    .line 231
    iget-object p2, p3, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 234
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;IZLcom/xiaomi/micloudsdk/b/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;IZ",
            "Lcom/xiaomi/micloudsdk/b/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-lez p2, :cond_16

    .line 241
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "retry"

    iget-object v2, p4, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-static {p0, v2, p2}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz p3, :cond_2c

    .line 246
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v0, "needReRequest"

    iget-object p4, p4, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    .line 247
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    .line 246
    invoke-static {p0, p4, p3}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const-string v0, "code"

    .line 198
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return p0

    :cond_d
    const-string v0, "code"

    .line 201
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;I)[Ljava/lang/String;
    .registers 13
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

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/kuaipan/kss/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/proxies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 147
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    iget-object v5, p2, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    .line 152
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 150
    invoke-static {v0, v5, p3}, Lcom/xiaomi/micloudsdk/request/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    :goto_34
    const/4 v3, 0x3

    if-ge v1, v3, :cond_79

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move v7, v1

    .line 159
    invoke-static/range {v3 .. v8}, Lcn/kuaipan/kss/b/f;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;IZ)Lorg/json/JSONObject;

    move-result-object p3

    .line 161
    invoke-static {p0, p3}, Lcn/kuaipan/kss/b/f;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_79

    :cond_48
    const-wide/16 v3, 0x0

    if-eqz p3, :cond_69

    const-string v5, "data"

    .line 167
    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    const-string v5, "data"

    .line 168
    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "retryAfter"

    .line 169
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    const-string v6, "retryAfter"

    .line 170
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_6a

    :cond_69
    move-wide v5, v3

    :goto_6a
    cmp-long v3, v5, v3

    if-lez v3, :cond_76

    .line 175
    :try_start_6e
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception v3

    .line 177
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_76
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 184
    :cond_79
    :goto_79
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "stat"

    const-string p2, "OK"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "proxies"

    const-string p2, "data"

    .line 185
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "list"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 184
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/kuaipan/kss/a/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/kuaipan/kss/b/b;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lorg/json/JSONObject;Ljava/io/File;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 9

    .line 66
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const/4 v0, 0x0

    .line 71
    :try_start_3
    new-instance v1, Lcn/kuaipan/kss/a/b;

    invoke-direct {v1}, Lcn/kuaipan/kss/a/b;-><init>()V

    .line 72
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcn/kuaipan/kss/a/b;->a(Ljava/lang/String;)Z

    .line 75
    new-instance p4, Lcn/kuaipan/kss/b/a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-direct {p4, v2, p2}, Lcn/kuaipan/kss/b/a;-><init>(Lorg/apache/http/client/HttpClient;Lcn/kuaipan/kss/b/b;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_18} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_3d
    .catchall {:try_start_3 .. :try_end_18} :catchall_3a

    .line 76
    :try_start_18
    invoke-static {p1}, Lcn/kuaipan/kss/b/f;->a(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object p1

    .line 77
    invoke-virtual {p4, v1, p3, p1}, Lcn/kuaipan/kss/b/a;->a(Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lcn/kuaipan/kss/KssDef$NetState;)Z

    .line 81
    new-instance p1, Lcn/kuaipan/kss/b/d;

    invoke-direct {p1}, Lcn/kuaipan/kss/b/d;-><init>()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_3e
    .catchall {:try_start_18 .. :try_end_24} :catchall_59

    const/4 p2, 0x1

    .line 82
    :try_start_25
    invoke-virtual {p1, p5, p2}, Lcn/kuaipan/kss/b/d;->a(Ljava/io/File;Z)V

    .line 85
    invoke-virtual {p4, p1}, Lcn/kuaipan/kss/b/a;->a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p2
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2c} :catch_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_36
    .catchall {:try_start_25 .. :try_end_2c} :catchall_33

    .line 94
    invoke-virtual {p1}, Lcn/kuaipan/kss/b/d;->e()V

    .line 97
    invoke-virtual {p4}, Lcn/kuaipan/kss/b/a;->a()V

    return-object p2

    :catchall_33
    move-exception p2

    move-object v0, p1

    goto :goto_5a

    :catch_36
    move-object v0, p1

    goto :goto_3e

    :catch_38
    move-object v0, p1

    goto :goto_4c

    :catchall_3a
    move-exception p2

    move-object p4, v0

    goto :goto_5a

    :catch_3d
    move-object p4, v0

    .line 90
    :catch_3e
    :goto_3e
    :try_start_3e
    sget-object p1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_59

    if-eqz v0, :cond_45

    .line 94
    invoke-virtual {v0}, Lcn/kuaipan/kss/b/d;->e()V

    :cond_45
    if-eqz p4, :cond_4a

    .line 97
    invoke-virtual {p4}, Lcn/kuaipan/kss/b/a;->a()V

    :cond_4a
    return-object p1

    :catch_4b
    move-object p4, v0

    .line 88
    :catch_4c
    :goto_4c
    :try_start_4c
    sget-object p1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_59

    if-eqz v0, :cond_53

    .line 94
    invoke-virtual {v0}, Lcn/kuaipan/kss/b/d;->e()V

    :cond_53
    if-eqz p4, :cond_58

    .line 97
    invoke-virtual {p4}, Lcn/kuaipan/kss/b/a;->a()V

    :cond_58
    return-object p1

    :catchall_59
    move-exception p2

    :goto_5a
    if-eqz v0, :cond_5f

    .line 94
    invoke-virtual {v0}, Lcn/kuaipan/kss/b/d;->e()V

    :cond_5f
    if-eqz p4, :cond_64

    .line 97
    invoke-virtual {p4}, Lcn/kuaipan/kss/b/a;->a()V

    :cond_64
    throw p2
.end method

.method public a(Landroid/content/Context;Lcn/kuaipan/kss/b/b;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lorg/json/JSONObject;Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 12

    .line 59
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/kss/b/f;->a(Landroid/content/Context;Lcn/kuaipan/kss/b/b;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lorg/json/JSONObject;Ljava/io/File;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p1

    return-object p1
.end method

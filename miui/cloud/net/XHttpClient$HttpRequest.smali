.class Lmiui/cloud/net/XHttpClient$HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRequest"
.end annotation


# instance fields
.field final synthetic a:Lmiui/cloud/net/XHttpClient;

.field private b:Lmiui/cloud/net/XHttpClient$HttpResponse;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

.field private h:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

.field private i:Lmiui/cloud/common/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiui/cloud/net/XHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/c;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->a:Lmiui/cloud/net/XHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance p1, Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-direct {p1}, Lmiui/cloud/net/XHttpClient$HttpResponse;-><init>()V

    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 288
    iput-object p2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->c:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->d:Ljava/lang/String;

    .line 290
    iput-object p4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->e:Ljava/util/Map;

    .line 291
    iput-object p5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->f:Ljava/lang/Object;

    .line 292
    iput-object p6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->g:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 293
    iput-object p7, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->h:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 294
    iput-object p8, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    .line 295
    iput-object p9, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->j:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 410
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ", "

    .line 414
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 413
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_2e
    return-void
.end method

.method private a(Ljava/net/URLConnection;)V
    .registers 4

    const/16 v0, 0x7530

    .line 396
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 397
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 398
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->a:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0}, Lmiui/cloud/net/XHttpClient;->b(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 399
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->a:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0}, Lmiui/cloud/net/XHttpClient;->b(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    move-result-object v0

    invoke-interface {v0}, Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;->a()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "User-Agent"

    .line 401
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public a()V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 309
    :try_start_3
    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->d:Ljava/lang/String;

    const-string v4, "[TEST]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 310
    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    const/16 v4, 0x400

    iput v4, v3, Lmiui/cloud/net/XHttpClient$HttpResponse;->b:I

    .line 311
    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    const-string v4, "TEST OK"

    iput-object v4, v3, Lmiui/cloud/net/XHttpClient$HttpResponse;->c:Ljava/lang/String;

    .line 312
    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->e:Ljava/util/Map;

    iput-object v4, v3, Lmiui/cloud/net/XHttpClient$HttpResponse;->d:Ljava/util/Map;

    .line 313
    iget-object v3, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->f:Ljava/lang/Object;

    iput-object v4, v3, Lmiui/cloud/net/XHttpClient$HttpResponse;->f:Ljava/lang/Object;
    :try_end_25
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_25} :catch_143
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_25} :catch_124
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_3 .. :try_end_25} :catch_105
    .catchall {:try_start_3 .. :try_end_25} :catchall_101

    const-wide/16 v3, 0xc8

    .line 315
    :try_start_27
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_ea
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_2a} :catch_143
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_124
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_27 .. :try_end_2a} :catch_105
    .catchall {:try_start_27 .. :try_end_2a} :catchall_101

    goto/16 :goto_ea

    .line 321
    :cond_2c
    :try_start_2c
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_39
    .catch Ljava/net/MalformedURLException; {:try_start_2c .. :try_end_39} :catch_143
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_124
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_2c .. :try_end_39} :catch_105
    .catchall {:try_start_2c .. :try_end_39} :catchall_101

    .line 324
    :try_start_39
    invoke-direct {p0, v3}, Lmiui/cloud/net/XHttpClient$HttpRequest;->a(Ljava/net/URLConnection;)V

    .line 326
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 327
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->e:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lmiui/cloud/net/XHttpClient$HttpRequest;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    const-string v4, "Connection"

    const-string v5, "close"

    .line 331
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->f:Ljava/lang/Object;

    if-eqz v4, :cond_86

    .line 334
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 336
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->g:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->f:Ljava/lang/Object;

    .line 337
    invoke-interface {v4, v5}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->b(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_62

    .line 339
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_65

    .line 341
    :cond_62
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :goto_65
    const-string v4, "Content-Type"

    .line 343
    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->g:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->f:Ljava/lang/Object;

    .line 344
    invoke-interface {v5, v6}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_76
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_76} :catch_ff
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_76} :catch_fd
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_39 .. :try_end_76} :catch_fb
    .catchall {:try_start_39 .. :try_end_76} :catchall_16f

    .line 348
    :try_start_76
    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->g:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->f:Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_81

    .line 350
    :try_start_7d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_86

    :catchall_81
    move-exception v0

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 354
    :cond_86
    :goto_86
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->b:I

    .line 355
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->c:Ljava/lang/String;

    .line 356
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->d:Ljava/util/Map;

    .line 357
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v4

    .line 358
    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-nez v7, :cond_ab

    goto :goto_b0

    :cond_ab
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_b0
    iput-object v0, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->e:Ljava/util/Date;

    .line 360
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget v0, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->b:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_e9

    .line 361
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_be
    .catch Ljava/net/MalformedURLException; {:try_start_7d .. :try_end_be} :catch_ff
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_be} :catch_fd
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_7d .. :try_end_be} :catch_fb
    .catchall {:try_start_7d .. :try_end_be} :catchall_16f

    .line 363
    :try_start_be
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->h:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    if-nez v4, :cond_d2

    .line 364
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->a:Lmiui/cloud/net/XHttpClient;

    invoke-static {v4}, Lmiui/cloud/net/XHttpClient;->a(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    move-result-object v4

    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v5, v5, Lmiui/cloud/net/XHttpClient$HttpResponse;->d:Ljava/util/Map;

    .line 365
    invoke-virtual {v4, v5, v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->a(Ljava/util/Map;Ljava/io/InputStream;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    move-result-object v4

    iput-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->h:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 366
    :cond_d2
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v5, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->h:Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    iget-object v6, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v6, v6, Lmiui/cloud/net/XHttpClient$HttpResponse;->d:Ljava/util/Map;

    invoke-interface {v5, v6, v0}, Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;->a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->f:Ljava/lang/Object;
    :try_end_e0
    .catchall {:try_start_be .. :try_end_e0} :catchall_e4

    .line 369
    :try_start_e0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_e9

    :catchall_e4
    move-exception v4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v4
    :try_end_e9
    .catch Ljava/net/MalformedURLException; {:try_start_e0 .. :try_end_e9} :catch_ff
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e9} :catch_fd
    .catch Lmiui/cloud/net/XHttpClient$DataConversionException; {:try_start_e0 .. :try_end_e9} :catch_fb
    .catchall {:try_start_e0 .. :try_end_e9} :catchall_16f

    :cond_e9
    :goto_e9
    move-object v0, v3

    :catch_ea
    :goto_ea
    if-eqz v0, :cond_ef

    .line 388
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 389
    :cond_ef
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->j:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->g:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    if-eqz v0, :cond_16e

    goto/16 :goto_161

    :catch_fb
    move-exception v0

    goto :goto_109

    :catch_fd
    move-exception v0

    goto :goto_128

    :catch_ff
    move-exception v0

    goto :goto_147

    :catchall_101
    move-exception v1

    move-object v3, v0

    goto/16 :goto_170

    :catch_105
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    .line 383
    :goto_109
    :try_start_109
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v0, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->a:Ljava/lang/Exception;

    .line 385
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V
    :try_end_114
    .catchall {:try_start_109 .. :try_end_114} :catchall_16f

    if-eqz v3, :cond_119

    .line 388
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 389
    :cond_119
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->j:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->g:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    if-eqz v0, :cond_16e

    goto :goto_161

    :catch_124
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    .line 379
    :goto_128
    :try_start_128
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v0, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->a:Ljava/lang/Exception;

    .line 381
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V
    :try_end_133
    .catchall {:try_start_128 .. :try_end_133} :catchall_16f

    if-eqz v3, :cond_138

    .line 388
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 389
    :cond_138
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->j:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->g:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    if-eqz v0, :cond_16e

    goto :goto_161

    :catch_143
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    .line 375
    :goto_147
    :try_start_147
    iget-object v4, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iput-object v0, v4, Lmiui/cloud/net/XHttpClient$HttpResponse;->a:Ljava/lang/Exception;

    .line 377
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V
    :try_end_152
    .catchall {:try_start_147 .. :try_end_152} :catchall_16f

    if-eqz v3, :cond_157

    .line 388
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 389
    :cond_157
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->j:Ljava/lang/Object;

    iput-object v1, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->g:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    if-eqz v0, :cond_16e

    .line 391
    :goto_161
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    invoke-virtual {v0}, Lmiui/cloud/common/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-interface {v0, v1}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->a(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    :cond_16e
    return-void

    :catchall_16f
    move-exception v1

    :goto_170
    if-eqz v3, :cond_175

    .line 388
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 389
    :cond_175
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->j:Ljava/lang/Object;

    iput-object v2, v0, Lmiui/cloud/net/XHttpClient$HttpResponse;->g:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    if-eqz v0, :cond_18c

    .line 391
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->i:Lmiui/cloud/common/c;

    invoke-virtual {v0}, Lmiui/cloud/common/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    iget-object v2, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->b:Lmiui/cloud/net/XHttpClient$HttpResponse;

    invoke-interface {v0, v2}, Lmiui/cloud/net/XHttpClient$IResponseHandler;->a(Lmiui/cloud/net/XHttpClient$HttpResponse;)V

    :cond_18c
    throw v1
.end method

.method public run()V
    .registers 2

    .line 300
    invoke-virtual {p0}, Lmiui/cloud/net/XHttpClient$HttpRequest;->a()V

    .line 301
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$HttpRequest;->a:Lmiui/cloud/net/XHttpClient;

    invoke-static {v0, p0}, Lmiui/cloud/net/XHttpClient;->a(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method

.class public Lcn/kuaipan/kss/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssDownload;


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:[B

.field private c:Lcn/kuaipan/kss/b/b;

.field private d:Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;

.field private e:Lcn/kuaipan/kss/b/g;

.field private f:I

.field private g:Lcn/kuaipan/kss/KssDef$NetState;

.field private h:I


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcn/kuaipan/kss/b/b;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->a:Lorg/apache/http/client/HttpClient;

    .line 189
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->b:[B

    .line 191
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->c:Lcn/kuaipan/kss/b/b;

    .line 192
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->d:Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;

    .line 194
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->e:Lcn/kuaipan/kss/b/g;

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcn/kuaipan/kss/b/a;->f:I

    .line 197
    sget-object v1, Lcn/kuaipan/kss/KssDef$NetState;->a:Lcn/kuaipan/kss/KssDef$NetState;

    iput-object v1, p0, Lcn/kuaipan/kss/b/a;->g:Lcn/kuaipan/kss/KssDef$NetState;

    .line 198
    iput v0, p0, Lcn/kuaipan/kss/b/a;->h:I

    .line 27
    iput-object p1, p0, Lcn/kuaipan/kss/b/a;->a:Lorg/apache/http/client/HttpClient;

    .line 28
    iput-object p2, p0, Lcn/kuaipan/kss/b/a;->c:Lcn/kuaipan/kss/b/b;

    .line 29
    new-instance p1, Lcn/kuaipan/kss/b/g;

    invoke-direct {p1}, Lcn/kuaipan/kss/b/g;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/kss/b/a;->e:Lcn/kuaipan/kss/b/g;

    .line 31
    sget p1, Lcn/kuaipan/kss/KssDef;->c:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcn/kuaipan/kss/b/a;->b:[B

    return-void
.end method

.method private a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 120
    new-instance v9, Lcn/kuaipan/kss/c/c;

    invoke-direct {v9}, Lcn/kuaipan/kss/c/c;-><init>()V

    .line 121
    iget-object v0, v1, Lcn/kuaipan/kss/b/a;->d:Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;

    invoke-interface {v0}, Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/kss/c/a;->a(Ljava/lang/String;)[B

    move-result-object v10

    .line 123
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 125
    :goto_17
    iget v3, v1, Lcn/kuaipan/kss/b/a;->h:I

    if-ge v12, v3, :cond_d5

    const/4 v0, 0x0

    .line 129
    :try_start_1c
    iget-object v3, v1, Lcn/kuaipan/kss/b/a;->c:Lcn/kuaipan/kss/b/b;

    if-nez v3, :cond_2b

    .line 130
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v11}, Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_29
    move-object v13, v3

    goto :goto_36

    .line 132
    :cond_2b
    iget-object v3, v1, Lcn/kuaipan/kss/b/a;->c:Lcn/kuaipan/kss/b/b;

    invoke-interface {v2, v11}, Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/kuaipan/kss/b/b;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_c3
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_35} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_35} :catch_b5
    .catchall {:try_start_1c .. :try_end_35} :catchall_b3

    goto :goto_29

    :goto_36
    :try_start_36
    const-string v0, "Range"

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcn/kuaipan/kss/b/a;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v9, v10}, Lcn/kuaipan/kss/c/c;->a([B)V

    .line 139
    iget-object v0, v1, Lcn/kuaipan/kss/b/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 142
    sget-object v14, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 145
    :cond_6a
    iget-object v3, v1, Lcn/kuaipan/kss/b/a;->b:[B

    sget v4, Lcn/kuaipan/kss/KssDef;->c:I

    invoke-virtual {v0, v3, v11, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    if-ltz v15, :cond_a9

    .line 147
    iget-object v4, v1, Lcn/kuaipan/kss/b/a;->b:[B

    const/4 v5, 0x0

    iget-object v7, v1, Lcn/kuaipan/kss/b/a;->b:[B

    const/4 v8, 0x0

    move-object v3, v9

    move v6, v15

    invoke-virtual/range {v3 .. v8}, Lcn/kuaipan/kss/c/c;->a([BII[BI)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_7f} :catch_b0
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_7f} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_7f} :catch_b5
    .catchall {:try_start_36 .. :try_end_7f} :catchall_b3

    .line 150
    :try_start_7f
    iget-object v3, v1, Lcn/kuaipan/kss/b/a;->b:[B
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_81} :catch_a0
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_81} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_81} :catch_b5
    .catchall {:try_start_7f .. :try_end_81} :catchall_b3

    move-object/from16 v4, p1

    :try_start_83
    invoke-interface {v4, v3, v15}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl;->a([BI)I
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_86} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_b7
    .catchall {:try_start_83 .. :try_end_86} :catchall_b3

    .line 157
    :try_start_86
    iget v3, v1, Lcn/kuaipan/kss/b/a;->f:I

    add-int/2addr v3, v15

    iput v3, v1, Lcn/kuaipan/kss/b/a;->f:I

    .line 160
    iget-object v3, v1, Lcn/kuaipan/kss/b/a;->e:Lcn/kuaipan/kss/b/g;

    invoke-virtual {v3, v15}, Lcn/kuaipan/kss/b/g;->a(I)V

    .line 161
    iget-object v3, v1, Lcn/kuaipan/kss/b/a;->e:Lcn/kuaipan/kss/b/g;

    invoke-virtual {v3}, Lcn/kuaipan/kss/b/g;->a()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 162
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 163
    sget-object v14, Lcn/kuaipan/kss/KssDef$KssAPIResult;->c:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_ab

    :catch_9e
    move-exception v0

    goto :goto_a3

    :catch_a0
    move-exception v0

    move-object/from16 v4, p1

    .line 152
    :goto_a3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    sget-object v14, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a8} :catch_c6
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_a8} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a8} :catch_b7
    .catchall {:try_start_86 .. :try_end_a8} :catchall_b3

    goto :goto_ab

    :cond_a9
    move-object/from16 v4, p1

    :goto_ab
    move-object v0, v14

    goto :goto_cb

    :catch_ad
    move-object/from16 v4, p1

    goto :goto_bd

    :catch_b0
    move-object/from16 v4, p1

    goto :goto_c6

    :catchall_b3
    move-exception v0

    goto :goto_d4

    :catch_b5
    move-object/from16 v4, p1

    .line 174
    :catch_b7
    :try_start_b7
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_cb

    :catch_ba
    move-object/from16 v4, p1

    move-object v13, v0

    .line 171
    :catch_bd
    :goto_bd
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 172
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_cb

    :catch_c3
    move-object/from16 v4, p1

    move-object v13, v0

    .line 168
    :catch_c6
    :goto_c6
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 169
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_cb
    .catchall {:try_start_b7 .. :try_end_cb} :catchall_b3

    .line 180
    :goto_cb
    sget-object v3, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-eq v0, v3, :cond_d0

    goto :goto_d5

    :cond_d0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_17

    .line 176
    :goto_d4
    throw v0

    :cond_d5
    :goto_d5
    return-object v0
.end method


# virtual methods
.method public a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcn/kuaipan/kss/b/a;->e:Lcn/kuaipan/kss/b/g;

    invoke-virtual {v0, p1}, Lcn/kuaipan/kss/b/g;->a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;)V

    .line 73
    invoke-interface {p1}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl;->a()I

    move-result v0

    sget v1, Lcn/kuaipan/kss/KssDef;->a:I

    div-int/2addr v0, v1

    .line 74
    invoke-interface {p1}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl;->a()I

    move-result v1

    sget v2, Lcn/kuaipan/kss/KssDef;->a:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcn/kuaipan/kss/b/a;->f:I

    .line 76
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 77
    :goto_17
    iget-object v2, p0, Lcn/kuaipan/kss/b/a;->d:Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;

    invoke-interface {v2}, Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;->b()I

    move-result v2

    if-ge v0, v2, :cond_4d

    .line 78
    iget-object v2, p0, Lcn/kuaipan/kss/b/a;->d:Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;

    invoke-interface {v2, v0}, Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;->a(I)Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v5, v1

    :goto_28
    const/4 v1, 0x1

    :goto_29
    if-eqz v1, :cond_42

    .line 82
    invoke-direct {p0, p1, v2}, Lcn/kuaipan/kss/b/a;->a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v5

    .line 85
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v5, v1, :cond_40

    .line 86
    iget-object v1, p0, Lcn/kuaipan/kss/b/a;->c:Lcn/kuaipan/kss/b/b;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcn/kuaipan/kss/b/a;->c:Lcn/kuaipan/kss/b/b;

    invoke-virtual {v1}, Lcn/kuaipan/kss/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_28

    :cond_40
    const/4 v1, 0x0

    goto :goto_29

    .line 92
    :cond_42
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v5, v1, :cond_4c

    .line 93
    iput v3, p0, Lcn/kuaipan/kss/b/a;->f:I

    add-int/lit8 v0, v0, 0x1

    move-object v1, v5

    goto :goto_17

    :cond_4c
    move-object v1, v5

    .line 99
    :cond_4d
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v1, v0, :cond_57

    .line 100
    sget-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->a:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    invoke-interface {p1, v0}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl;->a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;)V

    goto :goto_5c

    .line 102
    :cond_57
    sget-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->b:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    invoke-interface {p1, v0}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl;->a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;)V

    :goto_5c
    return-object v1
.end method

.method public a(Ljava/io/OutputStream;I)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 60
    :cond_3
    new-instance v0, Lcn/kuaipan/kss/b/d;

    invoke-direct {v0}, Lcn/kuaipan/kss/b/d;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcn/kuaipan/kss/b/d;->a(Ljava/io/OutputStream;)V

    .line 62
    invoke-virtual {v0, p2}, Lcn/kuaipan/kss/b/d;->a(I)I

    .line 64
    invoke-virtual {p0, v0}, Lcn/kuaipan/kss/b/a;->a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->a:Lorg/apache/http/client/HttpClient;

    .line 110
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->b:[B

    .line 111
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->c:Lcn/kuaipan/kss/b/b;

    .line 112
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->d:Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;

    .line 113
    iput-object v0, p0, Lcn/kuaipan/kss/b/a;->e:Lcn/kuaipan/kss/b/g;

    return-void
.end method

.method public a(Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lcn/kuaipan/kss/KssDef$NetState;)Z
    .registers 5

    .line 36
    iput-object p1, p0, Lcn/kuaipan/kss/b/a;->d:Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;

    .line 37
    iget-object v0, p0, Lcn/kuaipan/kss/b/a;->e:Lcn/kuaipan/kss/b/g;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/kss/b/g;->a(Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;)V

    .line 39
    iput-object p3, p0, Lcn/kuaipan/kss/b/a;->g:Lcn/kuaipan/kss/KssDef$NetState;

    .line 40
    sget p1, Lcn/kuaipan/kss/KssDef;->d:I

    iput p1, p0, Lcn/kuaipan/kss/b/a;->h:I

    .line 41
    iget-object p1, p0, Lcn/kuaipan/kss/b/a;->g:Lcn/kuaipan/kss/KssDef$NetState;

    sget-object p2, Lcn/kuaipan/kss/KssDef$NetState;->a:Lcn/kuaipan/kss/KssDef$NetState;

    if-eq p1, p2, :cond_19

    .line 42
    sget p1, Lcn/kuaipan/kss/KssDef;->d:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/kuaipan/kss/b/a;->h:I

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

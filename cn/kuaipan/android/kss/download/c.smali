.class public Lcn/kuaipan/android/kss/download/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# instance fields
.field private final W:Lcn/kuaipan/android/http/g;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/g;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/c;->W:Lcn/kuaipan/android/http/g;

    return-void
.end method

.method private a(Lcn/kuaipan/android/http/f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 271
    :try_start_2
    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->e()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p1

    .line 273
    invoke-static {p1}, Lcn/kuaipan/android/a/b;->d(Ljava/lang/Throwable;)Ljava/lang/InterruptedException;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_f

    .line 275
    :cond_e
    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method private a(Lcn/kuaipan/android/http/f;Lcn/kuaipan/android/kss/download/b;Lcn/kuaipan/android/kss/download/d;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 245
    :try_start_2
    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->c()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_29

    const/16 p1, 0x2000

    .line 252
    new-array p1, p1, [B
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_47

    const/4 v3, 0x0

    .line 253
    :cond_d
    :try_start_d
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_26

    if-ltz v4, :cond_20

    const/4 v3, 0x1

    if-lez v4, :cond_d

    .line 255
    :try_start_16
    invoke-virtual {p2, p1, v1, v4, p3}, Lcn/kuaipan/android/kss/download/b;->a([BIILcn/kuaipan/android/kss/download/d;)I

    move-result v5
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1d

    if-ge v5, v4, :cond_d

    goto :goto_20

    :catchall_1d
    move-exception p1

    const/4 v1, 0x1

    goto :goto_48

    :cond_20
    :goto_20
    if-eqz v3, :cond_25

    .line 263
    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_25
    return-void

    :catchall_26
    move-exception p1

    move v1, v3

    goto :goto_48

    .line 247
    :cond_29
    :try_start_29
    new-instance p2, Lcn/kuaipan/android/a/f;

    const p3, 0x7a128

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not meet exception, but no response.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    :goto_48
    if-eqz v1, :cond_4d

    .line 263
    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_4d
    throw p1
.end method

.method private a(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/kss/download/b;Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/http/KssTransferStopper;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/security/InvalidKeyException;,
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 159
    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->a()Lcn/kuaipan/android/kss/download/d;

    move-result-object v0

    move-object v4, v0

    :goto_b
    if-eqz v4, :cond_193

    .line 161
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_18d

    .line 165
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/d;->e()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->a()J

    move-result-wide v5

    move-object/from16 v7, p1

    .line 167
    invoke-interface {v7, v5, v6}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->a(J)[Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-virtual {v3, v5, v6}, Lcn/kuaipan/android/kss/download/LoadMap;->b(J)J

    move-result-wide v9

    sub-long/2addr v5, v9

    if-eqz v8, :cond_185

    .line 172
    array-length v0, v8

    if-lez v0, :cond_185

    .line 175
    new-instance v9, Lcn/kuaipan/android/kss/e;

    invoke-interface/range {p1 .. p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->d()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lcn/kuaipan/android/kss/e;-><init>([B)V

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 177
    :goto_36
    array-length v0, v8

    if-ge v10, v0, :cond_17b

    .line 178
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_175

    const/4 v12, 0x0

    .line 186
    :try_start_40
    invoke-virtual {v9}, Lcn/kuaipan/android/kss/e;->a()V

    .line 188
    aget-object v14, v8, v10

    .line 189
    new-instance v15, Lcn/kuaipan/android/http/KscHttpRequest;

    sget-object v0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v15, v0, v14, v9, v12}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_122
    .catchall {:try_start_40 .. :try_end_4c} :catchall_11e

    const-wide/16 v16, 0x0

    cmp-long v0, v5, v16

    if-lez v0, :cond_80

    .line 191
    :try_start_52
    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v13, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v13, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_71} :catch_76
    .catchall {:try_start_52 .. :try_end_71} :catchall_72

    goto :goto_80

    :catchall_72
    move-exception v0

    :goto_73
    const/4 v6, 0x0

    goto/16 :goto_162

    :catch_76
    move-exception v0

    move-object/from16 v11, p5

    move-wide/from16 v21, v5

    const/4 v12, 0x0

    move-object/from16 v5, p4

    goto/16 :goto_12b

    .line 194
    :cond_80
    :goto_80
    :try_start_80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 195
    iget-object v0, v1, Lcn/kuaipan/android/kss/download/c;->W:Lcn/kuaipan/android/http/g;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_86} :catch_113
    .catchall {:try_start_80 .. :try_end_86} :catchall_10e

    const/4 v13, 0x4

    move-wide/from16 v21, v5

    move-object/from16 v5, p4

    :try_start_8b
    invoke-virtual {v0, v15, v13, v5}, Lcn/kuaipan/android/http/g;->a(Lcn/kuaipan/android/http/KscHttpRequest;ILcn/kuaipan/android/http/KssTransferStopper;)Lcn/kuaipan/android/http/f;

    move-result-object v6
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8f} :catch_108
    .catchall {:try_start_8b .. :try_end_8f} :catchall_10e

    .line 196
    :try_start_8f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/4 v0, 0x0

    sub-long v11, v18, v11

    .line 198
    invoke-virtual {v6}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9a} :catch_101
    .catchall {:try_start_8f .. :try_end_9a} :catchall_fc

    if-eqz v0, :cond_b2

    .line 199
    :try_start_9c
    invoke-virtual {v6}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 201
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_aa} :catch_ae
    .catchall {:try_start_9c .. :try_end_aa} :catchall_ab

    goto :goto_b2

    :catchall_ab
    move-exception v0

    goto/16 :goto_162

    :catch_ae
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_106

    :cond_b2
    :goto_b2
    move-wide/from16 v17, v16

    .line 204
    :try_start_b4
    invoke-virtual {v6}, Lcn/kuaipan/android/http/f;->d()I

    move-result v19

    const-string v0, ""

    .line 206
    invoke-virtual {v6}, Lcn/kuaipan/android/http/f;->a()Ljava/lang/Throwable;

    move-result-object v13
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_be} :catch_101
    .catchall {:try_start_b4 .. :try_end_be} :catchall_fc

    if-eqz v13, :cond_cc

    .line 207
    :try_start_c0
    invoke-virtual {v6}, Lcn/kuaipan/android/http/f;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cc} :catch_ae
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_ab

    :cond_cc
    move-object/from16 v20, v0

    .line 209
    :try_start_ce
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v13
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d2} :catch_101
    .catchall {:try_start_ce .. :try_end_d2} :catchall_fc

    move-object/from16 v23, v15

    move-wide v15, v11

    :try_start_d5
    invoke-virtual/range {v13 .. v20}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a(Ljava/lang/String;JJILjava/lang/String;)V

    .line 210
    invoke-static {v6}, Lcn/kuaipan/android/a/b;->a(Lcn/kuaipan/android/http/f;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_db} :catch_f5
    .catchall {:try_start_d5 .. :try_end_db} :catchall_f0

    move-object/from16 v11, p5

    .line 212
    :try_start_dd
    invoke-direct {v1, v6, v2, v4, v11}, Lcn/kuaipan/android/kss/download/c;->a(Lcn/kuaipan/android/http/f;Lcn/kuaipan/android/kss/download/b;Lcn/kuaipan/android/kss/download/d;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v12, 0x1

    .line 214
    invoke-virtual {v3, v2, v12}, Lcn/kuaipan/android/kss/download/LoadMap;->a(Lcn/kuaipan/android/kss/download/b;Z)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e4} :catch_ee
    .catchall {:try_start_dd .. :try_end_e4} :catchall_f0

    .line 227
    invoke-direct {v1, v6}, Lcn/kuaipan/android/kss/download/c;->a(Lcn/kuaipan/android/http/f;)V

    if-eqz v4, :cond_17f

    .line 230
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/d;->b()V

    goto/16 :goto_17f

    :catch_ee
    move-exception v0

    goto :goto_f8

    :catchall_f0
    move-exception v0

    move-object/from16 v15, v23

    goto/16 :goto_162

    :catch_f5
    move-exception v0

    move-object/from16 v11, p5

    :goto_f8
    move-object v12, v6

    move-object/from16 v15, v23

    goto :goto_12b

    :catchall_fc
    move-exception v0

    move-object/from16 v23, v15

    goto/16 :goto_162

    :catch_101
    move-exception v0

    move-object/from16 v11, p5

    move-object/from16 v23, v15

    :goto_106
    move-object v12, v6

    goto :goto_12b

    :catch_108
    move-exception v0

    move-object/from16 v11, p5

    move-object/from16 v23, v15

    goto :goto_11c

    :catchall_10e
    move-exception v0

    move-object/from16 v23, v15

    goto/16 :goto_73

    :catch_113
    move-exception v0

    move-object/from16 v11, p5

    move-wide/from16 v21, v5

    move-object/from16 v23, v15

    move-object/from16 v5, p4

    :goto_11c
    const/4 v12, 0x0

    goto :goto_12b

    :catchall_11e
    move-exception v0

    const/4 v6, 0x0

    const/4 v15, 0x0

    goto :goto_162

    :catch_122
    move-exception v0

    move-object/from16 v11, p5

    move-wide/from16 v21, v5

    move-object/from16 v5, p4

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 218
    :goto_12b
    :try_start_12b
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->e(Ljava/lang/Throwable;)V

    .line 219
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->b(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_152

    array-length v6, v8
    :try_end_135
    .catchall {:try_start_12b .. :try_end_135} :catchall_160

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    if-lt v10, v6, :cond_13a

    goto :goto_152

    :cond_13a
    if-eqz v15, :cond_144

    .line 225
    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_147

    .line 227
    :cond_144
    invoke-direct {v1, v12}, Lcn/kuaipan/android/kss/download/c;->a(Lcn/kuaipan/android/http/f;)V

    :goto_147
    if-eqz v4, :cond_14c

    .line 230
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/d;->b()V

    :cond_14c
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v5, v21

    goto/16 :goto_36

    :cond_152
    :goto_152
    if-nez v12, :cond_157

    :try_start_154
    const-string v2, "No response."

    goto :goto_15b

    .line 221
    :cond_157
    invoke-virtual {v12}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object v2

    .line 220
    :goto_15b
    invoke-static {v0, v2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object v0

    throw v0
    :try_end_160
    .catchall {:try_start_154 .. :try_end_160} :catchall_160

    :catchall_160
    move-exception v0

    move-object v6, v12

    :goto_162
    if-eqz v15, :cond_16c

    .line 225
    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_16f

    .line 227
    :cond_16c
    invoke-direct {v1, v6}, Lcn/kuaipan/android/kss/download/c;->a(Lcn/kuaipan/android/http/f;)V

    :goto_16f
    if-eqz v4, :cond_174

    .line 230
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/d;->b()V

    :cond_174
    throw v0

    .line 179
    :cond_175
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_17b
    move-object/from16 v5, p4

    move-object/from16 v11, p5

    .line 235
    :cond_17f
    :goto_17f
    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->a()Lcn/kuaipan/android/kss/download/d;

    move-result-object v4

    goto/16 :goto_b

    .line 173
    :cond_185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No available urls to download."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_18d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_193
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 3

    .line 282
    invoke-static {p1}, Lcn/kuaipan/android/kss/download/a;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public a(Ljava/io/File;ZLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/IKssDownloadRequestResult;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 61
    :try_start_4
    invoke-interface/range {p5 .. p5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->f()J

    move-result-wide v4

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p2, :cond_1e

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_43

    .line 65
    :cond_1e
    invoke-static/range {p1 .. p1}, Lcn/kuaipan/android/utils/c;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_43

    .line 66
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed delete target file. Can\'t download to dest path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_43
    :goto_43
    new-instance v10, Lcn/kuaipan/android/kss/download/LoadMap;
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_11a

    move-object/from16 v0, p3

    move-object/from16 v11, p5

    :try_start_49
    invoke-direct {v10, v11, v0}, Lcn/kuaipan/android/kss/download/LoadMap;-><init>(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/http/IKscTransferListener;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_118

    .line 78
    :try_start_4c
    invoke-static/range {p1 .. p1}, Lcn/kuaipan/android/kss/download/a;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 79
    new-instance v12, Lcn/kuaipan/android/kss/download/a;

    invoke-direct {v12, v0}, Lcn/kuaipan/android/kss/download/a;-><init>(Ljava/io/File;)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_115

    .line 80
    :try_start_55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 81
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/download/a;->d()V

    .line 82
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/download/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 83
    invoke-virtual {v12, v10}, Lcn/kuaipan/android/kss/download/a;->a(Lcn/kuaipan/android/kss/download/LoadMap;)Z

    move-result v0

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    if-nez v0, :cond_81

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 88
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcn/kuaipan/android/kss/download/LoadMap;->a(J)V
    :try_end_81
    .catchall {:try_start_55 .. :try_end_81} :catchall_113

    .line 92
    :cond_81
    :try_start_81
    new-instance v13, Lcn/kuaipan/android/kss/download/b;

    invoke-direct {v13, v1}, Lcn/kuaipan/android/kss/download/b;-><init>(Ljava/io/File;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_86} :catch_10b
    .catchall {:try_start_81 .. :try_end_86} :catchall_113

    .line 93
    :try_start_86
    invoke-virtual {v10, v13, v2}, Lcn/kuaipan/android/kss/download/LoadMap;->a(Lcn/kuaipan/android/kss/download/b;Z)V

    .line 95
    invoke-interface/range {p5 .. p5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->f()J

    move-result-wide v3

    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_98

    .line 97
    invoke-virtual {v13, v3, v4}, Lcn/kuaipan/android/kss/download/b;->a(J)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_98} :catch_108
    .catchall {:try_start_86 .. :try_end_98} :catchall_105

    .line 103
    :cond_98
    :try_start_98
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v14, 0x3

    invoke-direct {v3, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 104
    :goto_9e
    invoke-virtual {v10}, Lcn/kuaipan/android/kss/download/LoadMap;->c()Z

    move-result v15
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_105

    if-nez v15, :cond_e1

    .line 105
    :try_start_a4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_dd

    if-nez v0, :cond_d7

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    move-object v6, v13

    move-object v7, v10

    move-object/from16 v8, p4

    move-object v9, v3

    .line 110
    :try_start_b3
    invoke-direct/range {v4 .. v9}, Lcn/kuaipan/android/kss/download/c;->a(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/kss/download/b;Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/http/KssTransferStopper;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 111
    invoke-virtual {v3, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_b9
    .catch Ljava/security/InvalidKeyException; {:try_start_b3 .. :try_end_b9} :catch_cf
    .catch Lcn/kuaipan/android/a/e; {:try_start_b3 .. :try_end_b9} :catch_ba
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_dd

    goto :goto_cc

    :catch_ba
    move-exception v0

    .line 115
    :try_start_bb
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-ltz v2, :cond_ce

    const-wide/16 v4, 0x1388

    .line 117
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :goto_cc
    move v2, v15

    goto :goto_9e

    .line 119
    :cond_ce
    throw v0

    :catch_cf
    move-exception v0

    const-string v1, "Failed when download kss block."

    .line 113
    invoke-static {v0, v1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object v0

    throw v0

    .line 106
    :cond_d7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catchall_dd
    move-exception v0

    move-object v3, v13

    move v2, v15

    goto :goto_11f

    .line 124
    :cond_e1
    invoke-interface/range {p5 .. p5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_ee

    .line 126
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_ee
    .catchall {:try_start_bb .. :try_end_ee} :catchall_dd

    .line 131
    :cond_ee
    :try_start_ee
    invoke-virtual {v13}, Lcn/kuaipan/android/kss/download/b;->c()V
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_ee .. :try_end_f1} :catch_f1

    :catch_f1
    if-eqz v15, :cond_f7

    .line 138
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/download/a;->b()V

    goto :goto_104

    .line 140
    :cond_f7
    invoke-interface/range {p5 .. p5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcn/kuaipan/android/kss/download/a;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v12, v10}, Lcn/kuaipan/android/kss/download/a;->b(Lcn/kuaipan/android/kss/download/LoadMap;)V

    .line 142
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/download/a;->c()V

    :goto_104
    return-void

    :catchall_105
    move-exception v0

    move-object v3, v13

    goto :goto_11f

    :catch_108
    move-exception v0

    move-object v3, v13

    goto :goto_10c

    :catch_10b
    move-exception v0

    :goto_10c
    :try_start_10c
    const-string v1, "Local IO error, when prepare kss download."

    .line 100
    invoke-static {v0, v1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object v0

    throw v0
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_113

    :catchall_113
    move-exception v0

    goto :goto_11f

    :catchall_115
    move-exception v0

    move-object v12, v3

    goto :goto_11f

    :catchall_118
    move-exception v0

    goto :goto_11d

    :catchall_11a
    move-exception v0

    move-object/from16 v11, p5

    :goto_11d
    move-object v10, v3

    move-object v12, v10

    :goto_11f
    if-eqz v3, :cond_124

    .line 131
    :try_start_121
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/b;->c()V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_121 .. :try_end_124} :catch_124

    :catch_124
    :cond_124
    if-eqz v12, :cond_13b

    if-nez v2, :cond_138

    if-eqz v10, :cond_13b

    .line 140
    invoke-interface/range {p5 .. p5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcn/kuaipan/android/kss/download/a;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v12, v10}, Lcn/kuaipan/android/kss/download/a;->b(Lcn/kuaipan/android/kss/download/LoadMap;)V

    .line 142
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/download/a;->c()V

    goto :goto_13b

    .line 138
    :cond_138
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/download/a;->b()V

    .line 142
    :cond_13b
    :goto_13b
    throw v0
.end method

.method public a(Ljava/io/File;ZLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/IKssDownloadRequestResult;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/kss/download/c;->a(Ljava/io/File;ZLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/IKssDownloadRequestResult;)V

    return-void
.end method

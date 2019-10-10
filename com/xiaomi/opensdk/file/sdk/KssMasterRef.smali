.class public Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
    }
.end annotation


# instance fields
.field private final W:Ljava/lang/String;

.field private final X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

.field private final Y:Lcn/kuaipan/android/kss/upload/c;

.field private final Z:Lcn/kuaipan/android/kss/download/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KssMasterRef"

    .line 36
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->W:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/b;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/b;-><init>()V

    .line 44
    new-instance v1, Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {v1, p1, v0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;-><init>(Landroid/content/Context;Lcn/kuaipan/android/kss/b;)V

    iput-object v1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .line 46
    new-instance v0, Lcn/kuaipan/android/http/g;

    invoke-direct {v0, p1}, Lcn/kuaipan/android/http/g;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {p1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcn/kuaipan/android/http/g;->a(ILjava/lang/String;)V

    .line 49
    new-instance p1, Lcn/kuaipan/android/kss/upload/c;

    iget-object v1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {p1, v0, v1}, Lcn/kuaipan/android/kss/upload/c;-><init>(Lcn/kuaipan/android/http/g;Lcn/kuaipan/android/kss/upload/UploadTaskStore;)V

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->Y:Lcn/kuaipan/android/kss/upload/c;

    .line 50
    new-instance p1, Lcn/kuaipan/android/kss/download/c;

    invoke-direct {p1, v0}, Lcn/kuaipan/android/kss/download/c;-><init>(Lcn/kuaipan/android/http/g;)V

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->Z:Lcn/kuaipan/android/kss/download/c;

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)I
    .registers 4

    if-nez p2, :cond_5

    const-string p2, ""

    goto :goto_9

    .line 214
    :cond_5
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a()Ljava/lang/String;

    move-result-object p2

    .line 215
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private a(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcom/xiaomi/opensdk/file/a/h;I)Lcn/kuaipan/android/kss/upload/b;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p3}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->b(I)Lcn/kuaipan/android/kss/upload/b;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_4b

    .line 168
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/h;->f()Lcom/xiaomi/opensdk/file/a/i;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 175
    :try_start_14
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/a/i;->f()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/opensdk/file/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_1c} :catch_38

    .line 180
    new-instance v2, Lcom/xiaomi/opensdk/file/sdk/d;

    invoke-direct {v2, v1}, Lcom/xiaomi/opensdk/file/sdk/d;-><init>(Ljava/util/Map;)V

    .line 182
    new-instance v1, Lcn/kuaipan/android/kss/upload/b;

    invoke-direct {v1, p1, v2}, Lcn/kuaipan/android/kss/upload/b;-><init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;)V

    .line 184
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/a/i;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/kuaipan/android/kss/upload/b;->a(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-eqz p1, :cond_36

    .line 186
    iget-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {p1, p3, v1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(ILcn/kuaipan/android/kss/upload/b;)V

    :cond_36
    move-object v0, v1

    goto :goto_4b

    :catch_38
    move-exception p1

    const-string p2, "getUploadInfo failed"

    .line 177
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    .line 171
    :cond_40
    new-instance p1, Lcn/kuaipan/android/a/f;

    const p2, 0x7a123

    const-string p3, "uploadParam null"

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p1

    .line 190
    :cond_4b
    :goto_4b
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/h;->l()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/kss/upload/b;->a(J)V

    const-string p1, "KssMasterRef"

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KssUploadInfo Return:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/b;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "KssRC4/1.0 %s/%s S3SDK/%s"

    const/4 v1, 0x3

    .line 209
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Lcn/kuaipan/android/utils/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "0.9.0a"

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_5

    return-void

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/opensdk/file/a/h;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->a()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_cb

    .line 57
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 58
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_cb

    .line 63
    new-instance v7, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->d()Lcom/xiaomi/opensdk/file/a/d;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/a/d;)V

    .line 65
    invoke-static {v6}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a(Ljava/io/File;)Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v8

    .line 66
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v8}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->a(Ljava/io/File;Ljava/lang/String;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)I

    move-result v9

    .line 68
    invoke-virtual {p0, v9}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->a(I)Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_50

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->f()Lcom/xiaomi/opensdk/file/a/i;

    move-result-object v0

    if-nez v0, :cond_50

    .line 70
    invoke-virtual {p1, v10}, Lcom/xiaomi/opensdk/file/a/h;->a(Z)V

    .line 71
    invoke-virtual {v8}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/a/h;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/a/h;->b(Ljava/lang/String;)V

    return-void

    :cond_50
    const/4 v11, 0x0

    move-object v0, v11

    .line 78
    :goto_52
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_c5

    if-nez v0, :cond_5e

    .line 83
    invoke-direct {p0, v8, p1, v9}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->a(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcom/xiaomi/opensdk/file/a/h;I)Lcn/kuaipan/android/kss/upload/b;

    move-result-object v0

    :cond_5e
    move-object v12, v0

    if-nez v12, :cond_70

    .line 89
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->a(J)V

    .line 90
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->c(J)V

    goto :goto_b1

    .line 93
    :cond_70
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/upload/b;->f()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 95
    invoke-virtual {p1, v10}, Lcom/xiaomi/opensdk/file/a/h;->a(Z)V

    .line 96
    invoke-virtual {p1, v11}, Lcom/xiaomi/opensdk/file/a/h;->a(Lcom/xiaomi/opensdk/file/a/i;)V

    return-void

    .line 98
    :cond_7d
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/upload/b;->c()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 100
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->a(J)V

    .line 101
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->c(J)V

    .line 103
    invoke-direct {p0, v9}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->b(I)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/a/h;->a(Z)V

    .line 105
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/upload/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/a/h;->c(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/upload/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/a/h;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v12}, Lcn/kuaipan/android/kss/upload/b;->a()Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/file/a/h;->b(Ljava/lang/String;)V

    :goto_b1
    return-void

    .line 112
    :cond_b2
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/file/a/h;->e()Lcom/xiaomi/opensdk/file/a/e;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcn/kuaipan/android/http/KssTransferStopper$KssTransferStopperFromMiCloudTransferStopper;->a(Lcom/xiaomi/opensdk/file/a/e;)Lcn/kuaipan/android/http/KssTransferStopper;

    move-result-object v3

    .line 113
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->Y:Lcn/kuaipan/android/kss/upload/c;

    move-object v1, v6

    move-object v2, v7

    move v4, v9

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/kss/upload/c;->a(Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;ILcn/kuaipan/android/kss/upload/b;)V

    move-object v0, v12

    goto :goto_52

    .line 79
    :cond_c5
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 59
    :cond_cb
    new-instance p1, Lcn/kuaipan/android/a/f;

    const v0, 0x7a123

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a exist file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/io/File;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->Z:Lcn/kuaipan/android/kss/download/c;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/download/c;->a(Ljava/io/File;)V

    return-void
.end method

.method public a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_4d

    .line 136
    new-instance v3, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;

    invoke-direct {v3, p0, p3}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;-><init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/a/d;)V

    .line 139
    :try_start_7
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/b;->f()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_45

    .line 144
    new-instance v5, Lcom/xiaomi/opensdk/file/sdk/c;

    invoke-direct {v5, p2}, Lcom/xiaomi/opensdk/file/sdk/c;-><init>(Ljava/util/Map;)V

    .line 146
    invoke-interface {v5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->a()I

    move-result p2

    if-eqz p2, :cond_39

    .line 147
    invoke-interface {v5}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->b()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 149
    new-instance p1, Lcn/kuaipan/android/a/e;

    const p2, 0x7acd8

    const-string p3, "Unknow error when requestDownload."

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p1

    .line 152
    :cond_2f
    new-instance p2, Lcn/kuaipan/android/a/j;

    const/16 p3, 0xc8

    const-string p4, "Failed on requestDownload"

    invoke-direct {p2, p3, p1, p4}, Lcn/kuaipan/android/a/j;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_39
    invoke-static {p4}, Lcn/kuaipan/android/http/KssTransferStopper$KssTransferStopperFromMiCloudTransferStopper;->a(Lcom/xiaomi/opensdk/file/a/e;)Lcn/kuaipan/android/http/KssTransferStopper;

    move-result-object v4

    .line 157
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->Z:Lcn/kuaipan/android/kss/download/c;

    move-object v1, p1

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/kss/download/c;->a(Ljava/io/File;ZLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/IKssDownloadRequestResult;)V

    return-void

    :catch_45
    move-exception p1

    const-string p2, "download failed"

    .line 141
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    .line 133
    :cond_4d
    new-instance p1, Lcn/kuaipan/android/a/f;

    const p2, 0x7a123

    const-string p3, "Save path can\'t be null."

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Z)V
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

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;Z)V

    return-void
.end method

.method public a(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_15

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->b(I)Lcn/kuaipan/android/kss/upload/b;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

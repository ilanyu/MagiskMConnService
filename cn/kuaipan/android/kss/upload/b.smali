.class public Lcn/kuaipan/android/kss/upload/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# static fields
.field private static final Y:Ljava/lang/String; = "KssUploadInfo"


# instance fields
.field W:Z

.field X:Lcn/kuaipan/android/kss/upload/d;

.field private final Z:Lcn/kuaipan/android/kss/upload/UploadFileInfo;

.field private final aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

.field private final ab:J

.field private ac:Ljava/lang/String;

.field private ad:J


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;)V
    .registers 5

    .line 32
    invoke-static {}, Lcn/kuaipan/android/utils/l;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/kss/upload/b;-><init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;J)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;J)V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcn/kuaipan/android/kss/upload/b;->W:Z

    const-wide/32 v0, 0x400000

    .line 28
    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/b;->ad:J

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/b;->X:Lcn/kuaipan/android/kss/upload/d;

    .line 37
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/b;->Z:Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    .line 38
    iput-object p2, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    .line 39
    iput-wide p3, p0, Lcn/kuaipan/android/kss/upload/b;->ab:J

    return-void
.end method


# virtual methods
.method public a()Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .registers 2

    .line 43
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/b;->Z:Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .line 103
    iput-wide p1, p0, Lcn/kuaipan/android/kss/upload/b;->ad:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/b;->ac:Ljava/lang/String;

    return-void
.end method

.method public b()Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .registers 2

    .line 47
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 51
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v0}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public d()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/b;->ab:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .registers 8

    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_meta"

    .line 62
    iget-object v2, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v2}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v1}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->d()I

    move-result v1

    .line 65
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 66
    iget-object v3, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    if-eqz v3, :cond_3c

    if-lez v1, :cond_3c

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v1, :cond_3c

    .line 69
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "commit_meta"

    .line 70
    iget-object v6, p0, Lcn/kuaipan/android/kss/upload/b;->aa:Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    invoke-interface {v6, v3}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->a(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object v6

    iget-object v6, v6, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_3c
    const-string v1, "commit_metas"

    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    const-string v0, "KssUploadInfo"

    const-string v1, "Failed generate Json String for UploadRequestResult"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 79
    :goto_4a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/upload/b;->W:Z

    return v0
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcn/kuaipan/android/kss/upload/b;->W:Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/b;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/b;->ad:J

    return-wide v0
.end method

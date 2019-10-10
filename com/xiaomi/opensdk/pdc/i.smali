.class public Lcom/xiaomi/opensdk/pdc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "SyncFactory"


# instance fields
.field public final a:Lcom/xiaomi/opensdk/pdc/k;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    return-void
.end method

.method private varargs a([Lcom/xiaomi/opensdk/pdc/asset/b;)Lorg/json/JSONArray;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p1, "SyncFactory"

    const-string v1, "getAssetJsonArray() with null argument, handled."

    .line 75
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 78
    :cond_b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 79
    array-length v2, p1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_39

    aget-object v4, p1, v3

    .line 80
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_1b
    const-string v6, "assetId"

    .line 82
    iget-object v7, v4, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "size"

    .line 83
    iget-wide v7, v4, Lcom/xiaomi/opensdk/pdc/asset/b;->c:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2c} :catch_2d

    goto :goto_36

    :catch_2d
    move-exception v1

    const-string v4, "SyncFactory"

    const-string v5, "JSONException in getAssetJsonArray()"

    .line 86
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_39
    return-object v1
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;
    .registers 3

    .line 45
    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/k;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->a()Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->a()Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 106
    new-instance v6, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->a()Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/a;
    .registers 14

    .line 25
    new-instance v7, Lcom/xiaomi/opensdk/pdc/a;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/a;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v7
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/a;
    .registers 16

    .line 30
    new-instance v8, Lcom/xiaomi/opensdk/pdc/a;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    .line 31
    invoke-direct {p0, p6}, Lcom/xiaomi/opensdk/pdc/i;->a([Lcom/xiaomi/opensdk/pdc/asset/b;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/opensdk/pdc/a;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    return-object v8
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/c;
    .registers 12

    .line 21
    new-instance v6, Lcom/xiaomi/opensdk/pdc/c;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/c;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/xiaomi/opensdk/pdc/l;
    .registers 19

    .line 35
    new-instance v9, Lcom/xiaomi/opensdk/pdc/l;

    move-object v10, p0

    iget-object v1, v10, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/l;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-object v9
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/l;
    .registers 21

    move-object v0, p0

    .line 40
    new-instance v11, Lcom/xiaomi/opensdk/pdc/l;

    iget-object v2, v0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object/from16 v1, p8

    .line 41
    invoke-direct {p0, v1}, Lcom/xiaomi/opensdk/pdc/i;->a([Lcom/xiaomi/opensdk/pdc/asset/b;)Lorg/json/JSONArray;

    move-result-object v10

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/l;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V

    return-object v11
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->a()Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 50
    new-instance v6, Lcom/xiaomi/opensdk/pdc/c;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/c;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/c;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 54
    new-instance v7, Lcom/xiaomi/opensdk/pdc/a;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/a;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v7}, Lcom/xiaomi/opensdk/pdc/a;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 64
    new-instance v9, Lcom/xiaomi/opensdk/pdc/l;

    move-object v10, p0

    iget-object v1, v10, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/l;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    invoke-virtual {v9}, Lcom/xiaomi/opensdk/pdc/l;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    move-object v0, p0

    .line 70
    new-instance v11, Lcom/xiaomi/opensdk/pdc/l;

    iget-object v2, v0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    move-object/from16 v1, p8

    invoke-direct {p0, v1}, Lcom/xiaomi/opensdk/pdc/i;->a([Lcom/xiaomi/opensdk/pdc/asset/b;)Lorg/json/JSONArray;

    move-result-object v10

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/l;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V

    invoke-virtual {v11}, Lcom/xiaomi/opensdk/pdc/l;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v1

    return-object v1
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 60
    new-instance v8, Lcom/xiaomi/opensdk/pdc/a;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/i;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-direct {p0, p6}, Lcom/xiaomi/opensdk/pdc/i;->a([Lcom/xiaomi/opensdk/pdc/asset/b;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/opensdk/pdc/a;-><init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/a;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

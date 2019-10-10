.class public Lcom/xiaomi/opensdk/pdc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "OpenPdcUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    if-eqz v0, :cond_a2

    .line 43
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "conflictType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 47
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    :goto_16
    move-object v8, v0

    goto :goto_39

    :cond_18
    const-string v1, "eTag"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 49
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    goto :goto_16

    :cond_23
    const-string v1, "id"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 51
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    goto :goto_16

    :cond_2e
    const-string v1, "uniqueKey"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 53
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    goto :goto_16

    .line 60
    :goto_39
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const/4 v1, 0x0

    if-ne v8, v0, :cond_4d

    .line 61
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "record"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/xiaomi/opensdk/pdc/e;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v0

    move-object v9, v0

    move-object v10, v1

    goto :goto_5b

    .line 65
    :cond_4d
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "conflictRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/xiaomi/opensdk/pdc/e;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v0

    move-object v10, v0

    move-object v9, v1

    .line 69
    :goto_5b
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v0

    .line 55
    :cond_6c
    new-instance p0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown conflict type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    const-string v0, "OpenPdcUtils"

    const-string v1, "parseUploadResult error "

    .line 72
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseUploadResult error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_a2
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    sget-object v8, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    const-string v0, "eTag"

    const-wide/16 v1, -0x1

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "id"

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "uniqueKey"

    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "parentId"

    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "type"

    .line 21
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "status"

    .line 22
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 25
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->a:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    :goto_31
    move-object v12, v0

    goto :goto_3e

    :cond_33
    const-string v1, "deleted"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 27
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->b:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    goto :goto_31

    :goto_3e
    const-string v0, "contentJson"

    .line 31
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v0, "assetList"

    .line 32
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 34
    new-instance v0, Lcom/xiaomi/opensdk/pdc/j;

    .line 35
    invoke-static {p0, v9}, Lcom/xiaomi/opensdk/pdc/asset/f;->a(Lorg/json/JSONArray;Ljava/lang/String;)[Lcom/xiaomi/opensdk/pdc/asset/b;

    move-result-object v11

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v0

    .line 37
    :cond_57
    new-instance p0, Lcom/xiaomi/opensdk/pdc/j;

    const/4 v11, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object p0

    .line 29
    :cond_5f
    new-instance p0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    if-eqz v0, :cond_72

    .line 83
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "watermark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 84
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "syncToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "hasMore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 86
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "records"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 87
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 88
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 89
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/xiaomi/opensdk/pdc/e;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v2

    .line 91
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 93
    :cond_42
    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    iget-boolean v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v8, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    move-exception p0

    const-string v0, "OpenPdcUtils"

    const-string v1, "parseDownloadResult error "

    .line 96
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDownloadResult error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_72
    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static c(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 107
    iget-boolean v1, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    if-eqz v1, :cond_29

    .line 108
    iget-object v1, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "record"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 111
    invoke-static {v1}, Lcom/xiaomi/opensdk/pdc/e;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v1

    :goto_14
    move-object v9, v1

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_14

    .line 115
    :goto_18
    new-instance v1, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    iget-boolean v3, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v4, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v6, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v8, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v1

    .line 117
    :cond_29
    new-instance v1, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    iget-boolean v11, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v12, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v14, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v0, v0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v10, v1

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v1
.end method

.method public static d(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_6f

    .line 124
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "cursor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "hasMore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 126
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "records"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 127
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 128
    :goto_2b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 129
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 130
    invoke-static {v2}, Lcom/xiaomi/opensdk/pdc/e;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v2

    .line 131
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 133
    :cond_3f
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    iget-boolean v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v9, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4f} :catch_50

    return-object v0

    :catch_50
    move-exception p0

    const-string v0, "OpenPdcUtils"

    const-string v1, "FetchChildrenOperation error "

    .line 136
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchChildrenOperation error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_6f
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static e(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_6e

    .line 148
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "hasMore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 149
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "records"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "beginKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 151
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 152
    :goto_2a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 154
    invoke-static {v2}, Lcom/xiaomi/opensdk/pdc/e;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v2

    .line 155
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 157
    :cond_3e
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    iget-boolean v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v8, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4e} :catch_4f

    return-object v0

    :catch_4f
    move-exception p0

    const-string v0, "OpenPdcUtils"

    const-string v1, "FetchChildrenOperation error "

    .line 160
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchChildrenOperation error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_6e
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V

    return-object v0
.end method

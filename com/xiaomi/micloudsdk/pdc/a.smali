.class public Lcom/xiaomi/micloudsdk/pdc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/k;


# static fields
.field private static final a:Ljava/lang/String; = "Pdc4SyncServerAdapter"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 5

    const-string v0, "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

    const/4 v1, 0x2

    .line 133
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 135
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 136
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 133
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/xiaomi/opensdk/pdc/c;)Ljava/lang/String;
    .registers 6

    const-string v0, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/delete"

    const/4 v1, 0x3

    .line 153
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 155
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 156
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 157
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 153
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/xiaomi/opensdk/pdc/a;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 115
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 116
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 117
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uniqueKey"

    .line 118
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentId"

    .line 119
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentJson"

    .line 120
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->j()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "assetList"

    .line 122
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->j()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string p1, "status"

    const-string v1, "normal"

    .line 124
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getCreateRecordJson error"

    .line 127
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v0, "getCreateRecordJson error"

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 173
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 174
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 175
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uniqueKey"

    .line 176
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentId"

    .line 177
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentJson"

    .line 178
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->k()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->k()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "assetList"

    .line 180
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->k()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string p1, "status"

    const-string v1, "normal"

    .line 182
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getUpdateRecordJson error"

    .line 185
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v0, "getUpdateRecordJson error"

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/xiaomi/opensdk/pdc/l;)Ljava/lang/String;
    .registers 6

    const-string v0, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/update"

    const/4 v1, 0x3

    .line 191
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 193
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 194
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 195
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 191
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 222
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/opensdk/pdc/UploadOperation;

    .line 223
    invoke-interface {v2}, Lcom/xiaomi/opensdk/pdc/UploadOperation;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    :cond_22
    const-string p1, "batchContent"

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/batch"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 228
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 229
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 226
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {v3, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 232
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->c(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/DownloadOperation;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v1, "syncToken"

    .line 203
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string p1, "limit"

    const/16 v1, 0xc8

    .line 205
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 209
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 210
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 207
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {v3, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 213
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->b(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 254
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v1, "cursor"

    .line 256
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v1, "limit"

    const/16 v2, 0xc8

    .line 258
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/children"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 262
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 263
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 264
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 260
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {v4, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->e(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 242
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 243
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 244
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 240
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {v4, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 247
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->d(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "indexName"

    .line 274
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "beginKey"

    .line 275
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endKey"

    .line 276
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isReverse"

    .line 277
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "limit"

    const/16 v1, 0xc8

    .line 278
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/index"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 282
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 283
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 280
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {v3, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->f(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/file/a/a;)Lcom/xiaomi/opensdk/pdc/asset/e;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/asset/c;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 319
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :try_start_a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "storage"

    .line 322
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/a;->f()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "fullJson"

    .line 323
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Pdc4SyncServerAdapter"

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitAsset:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_37} :catch_8c

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/commit"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 331
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 332
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    .line 329
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 336
    :try_start_63
    invoke-static {v2, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1
    :try_end_67
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_63 .. :try_end_67} :catch_7c

    .line 341
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/e;

    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v6, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    iget v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->d:I

    iget-object v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/asset/e;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V

    return-object p2

    :catch_7c
    move-exception p1

    const-string p2, "Pdc4SyncServerAdapter"

    const-string v0, "commitAsset SyncException"

    .line 338
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "SyncException in commitAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_8c
    move-exception p1

    .line 326
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "JSONException in commitAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/file/a/g;)Lcom/xiaomi/opensdk/pdc/asset/e;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/asset/c;
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 292
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :try_start_a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "storage"

    .line 295
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/g;->f()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "fullJson"

    .line 296
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Pdc4SyncServerAdapter"

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUploadAsset:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_37} :catch_8c

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/upload"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 304
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 305
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    .line 302
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 308
    :try_start_63
    invoke-static {v2, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1
    :try_end_67
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_63 .. :try_end_67} :catch_7c

    .line 313
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/e;

    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v6, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    iget v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->d:I

    iget-object v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/asset/e;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V

    return-object p2

    :catch_7c
    move-exception p1

    const-string p2, "Pdc4SyncServerAdapter"

    const-string v0, "requestUploadAsset SyncException"

    .line 310
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "SyncException in requestUploadAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_8c
    move-exception p1

    .line 299
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "JSONException in requestUploadAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/asset/e;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/asset/c;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 347
    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/asset/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 348
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Pdc4SyncServerAdapter"

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 353
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 354
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 351
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 357
    :try_start_5c
    invoke-static {v3, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 358
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/e;

    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v6, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    iget v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->d:I

    iget-object v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/asset/e;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_74
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_5c .. :try_end_74} :catch_75

    return-object p2

    :catch_75
    move-exception p1

    const-string p2, "Pdc4SyncServerAdapter"

    const-string v0, "requestDownload SyncException"

    .line 360
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "SyncException in requestDownload"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/a;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "record"

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->c(Lcom/xiaomi/opensdk/pdc/a;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "path"

    .line 60
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/pdc/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "params"

    .line 61
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getCreateJson error"

    .line 64
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v0, "getCreateJson error"

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/c;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 73
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 74
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eTag"

    .line 75
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "path"

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->c(Lcom/xiaomi/opensdk/pdc/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "params"

    .line 79
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_34

    return-object v1

    :catch_34
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getDeleteJson error"

    .line 82
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v0, "getDeleteJson error"

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 90
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "record"

    .line 91
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->c(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eTag"

    .line 92
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "path"

    .line 95
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->d(Lcom/xiaomi/opensdk/pdc/l;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "params"

    .line 96
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object v1

    :catch_2b
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getUpdateJson error"

    .line 99
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v0, "getUpdateJson error"

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/xiaomi/opensdk/pdc/a;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "record"

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->c(Lcom/xiaomi/opensdk/pdc/a;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/pdc/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 109
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/xiaomi/opensdk/pdc/c;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 143
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 144
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eTag"

    .line 145
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->c(Lcom/xiaomi/opensdk/pdc/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 148
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/xiaomi/opensdk/pdc/l;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "record"

    .line 163
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->c(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eTag"

    .line 164
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/a;->d(Lcom/xiaomi/opensdk/pdc/l;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 167
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/asset/e;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/asset/c;
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 368
    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/asset/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 369
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Pdc4SyncServerAdapter"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssetUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s/playurl"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->b:Ljava/lang/String;

    .line 374
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    .line 375
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 372
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 378
    :try_start_5c
    invoke-static {v3, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    .line 379
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/e;

    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v6, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    iget v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->d:I

    iget-object v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/asset/e;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_74
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_5c .. :try_end_74} :catch_75

    return-object p2

    :catch_75
    move-exception p1

    const-string p2, "Pdc4SyncServerAdapter"

    const-string v0, "getAssetUrl SyncException"

    .line 381
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "SyncException in getAssetUrl"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/a;->c:Ljava/lang/String;

    return-object v0
.end method

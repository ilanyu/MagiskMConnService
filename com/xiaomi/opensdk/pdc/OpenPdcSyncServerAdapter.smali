.class public Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OpenPdcSyncServerAdapter"


# instance fields
.field private final b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 42
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    if-nez v1, :cond_11

    const-string v1, "micpdc.openapi.xiaomi.net"

    goto :goto_17

    :cond_11
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    invoke-interface {v1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->a()Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/xiaomi/opensdk/pdc/c;)Ljava/lang/String;
    .registers 6

    const-string v0, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    const/4 v1, 0x3

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 118
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 120
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 116
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/xiaomi/opensdk/pdc/l;)Ljava/lang/String;
    .registers 6

    const-string v0, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    const/4 v1, 0x3

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 139
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 140
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 141
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 137
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

    .line 83
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 84
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 85
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uniqueKey"

    .line 86
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentId"

    .line 87
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentJson"

    .line 88
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->j()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "assetList"

    .line 90
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/a;->j()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string p1, "status"

    const-string v1, "normal"

    .line 92
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "record"

    .line 94
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5c} :catch_5d

    return-object p1

    :catch_5d
    move-exception p1

    const-string v0, "OpenPdcSyncServerAdapter"

    const-string v1, "getCreateRecordJson error"

    .line 97
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v0, "getCreateRecordJson error"

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()Ljava/lang/String;
    .registers 5

    const-string v0, "/mic/open/pdc/apps/%s/spaces/%s/records"

    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 77
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 78
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 75
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 146
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 147
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 148
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uniqueKey"

    .line 149
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentId"

    .line 150
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentJson"

    .line 151
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->k()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->k()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "assetList"

    .line 153
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->k()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string v1, "status"

    const-string v2, "normal"

    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "eTag"

    .line 157
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/l;->j()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "record"

    .line 158
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_65} :catch_66

    return-object v1

    :catch_66
    move-exception p1

    const-string v0, "OpenPdcSyncServerAdapter"

    const-string v1, "getUpdateBodyJson error"

    .line 161
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v0, "getUpdateBodyJson error"

    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 264
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 265
    :goto_a
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 266
    invoke-virtual {p1, v0}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/opensdk/pdc/UploadOperation;

    .line 267
    invoke-interface {v1}, Lcom/xiaomi/opensdk/pdc/UploadOperation;->b()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 268
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 270
    :cond_22
    new-instance p1, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/DownloadOperation;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 169
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 170
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 171
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v0, "syncToken"

    .line 173
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string p1, "limit"

    const/16 v0, 0xc8

    .line 175
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mic/open/pdc/apps/%s/spaces/%s/records"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 179
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 180
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 177
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 183
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/e;->b(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 206
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 207
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 208
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 209
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v0, "cursor"

    .line 211
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v0, "limit"

    const/16 v1, 0xc8

    .line 213
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/%s/children"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 217
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 218
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 219
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 215
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 221
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/e;->d(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 189
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 190
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 191
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 195
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 196
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 197
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 193
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 200
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/e;->c(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 228
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 229
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 230
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "indexName"

    .line 231
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "beginKey"

    .line 232
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "endKey"

    .line 233
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isReverse"

    .line 234
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "limit"

    const/16 v0, 0xc8

    .line 235
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mic/open/pdc/apps/%s/spaces/%s/records/index"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 239
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 240
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 237
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 243
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/e;->e(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

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

    .line 302
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 303
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 304
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/commit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 307
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 308
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 305
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    :try_start_41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "storage"

    .line 312
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/a;->f()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "type"

    .line 313
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "POST"

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 315
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/e;

    iget-boolean v1, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v6, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    iget v7, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->b:I

    iget-object v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/asset/e;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_76
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_41 .. :try_end_76} :catch_87
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_76} :catch_77

    return-object p2

    :catch_77
    move-exception p1

    const-string p2, "OpenPdcSyncServerAdapter"

    const-string v0, "JSONException in requestUploadAsset"

    .line 320
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "JSONException in getAssetRequsetUploadBodyJson"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_87
    move-exception p1

    const-string p2, "OpenPdcSyncServerAdapter"

    const-string v0, "commitAsset SyncException"

    .line 317
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "SyncException in commitAsset"

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

    .line 275
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 276
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 277
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 280
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 281
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 278
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 284
    :try_start_41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "storage"

    .line 285
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/a/g;->f()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "type"

    .line 286
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "POST"

    const/4 v4, 0x0

    .line 288
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 287
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 289
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/e;

    iget-boolean v1, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v6, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    iget v7, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->b:I

    iget-object v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/asset/e;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_76
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_41 .. :try_end_76} :catch_87
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_76} :catch_77

    return-object p2

    :catch_77
    move-exception p1

    const-string p2, "OpenPdcSyncServerAdapter"

    const-string v0, "JSONException in requestUploadAsset"

    .line 294
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "JSONException in getAssetRequsetUploadBodyJson"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_87
    move-exception p1

    const-string p2, "OpenPdcSyncServerAdapter"

    const-string v0, "requestUploadAsset SyncException"

    .line 291
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "SyncException in requestUploadAsset"

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

    .line 327
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 328
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 329
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 330
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/asset/b;->a:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 331
    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/%s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    .line 334
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    .line 335
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    .line 336
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 332
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 338
    :try_start_56
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 340
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/e;

    iget-boolean v1, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J

    iget-object v6, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    iget v7, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->b:I

    iget-object v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->g:Lorg/json/JSONObject;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/asset/e;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_74
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_56 .. :try_end_74} :catch_75

    return-object p2

    :catch_75
    move-exception p1

    const-string p2, "OpenPdcSyncServerAdapter"

    const-string v0, "requestDownload SyncException"

    .line 342
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    const-string v0, "SyncException in requestDownload"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/a;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 248
    new-instance p1, Ljava/lang/NoSuchMethodError;

    const-string v0, "OpenPDC doesn\'t support batch operations"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/c;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 253
    new-instance p1, Ljava/lang/NoSuchMethodError;

    const-string v0, "OpenPDC doesn\'t support batch operations"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 258
    new-instance p1, Ljava/lang/NoSuchMethodError;

    const-string v0, "OpenPDC doesn\'t support batch operations"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/xiaomi/opensdk/pdc/a;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 64
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 65
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 66
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "POST"

    .line 70
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c(Lcom/xiaomi/opensdk/pdc/a;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/e;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/xiaomi/opensdk/pdc/c;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 104
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 105
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 106
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "eTag"

    .line 107
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 108
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c(Lcom/xiaomi/opensdk/pdc/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "DELETE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/e;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/xiaomi/opensdk/pdc/l;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 125
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 126
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 127
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->c(Lcom/xiaomi/opensdk/pdc/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->b:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "PUT"

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->d(Lcom/xiaomi/opensdk/pdc/l;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    .line 130
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/e;->a(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/asset/e;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/asset/c;
        }
    .end annotation

    .line 350
    new-instance p1, Lcom/xiaomi/opensdk/pdc/asset/c;

    sget-object v2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "\u65b9\u6cd5\u672a\u5b9e\u73b0"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->f:Ljava/lang/String;

    return-object v0
.end method

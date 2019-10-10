.class public Lcom/xiaomi/mistatistic/sdk/controller/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/controller/h;


# instance fields
.field private b:Lcom/xiaomi/mistatistic/sdk/controller/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/g$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/g$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/h;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Lcom/xiaomi/mistatistic/sdk/controller/a;

    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/h;
    .registers 1

    .line 52
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/h;)Ljava/util/List;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/h;Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/b;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/j$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a8

    .line 234
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_a8

    .line 237
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/data/b;

    .line 238
    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/data/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 240
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 241
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 243
    :cond_39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 249
    :cond_4b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a7

    .line 251
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 252
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 254
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 255
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/mistatistic/sdk/data/b;

    .line 256
    invoke-virtual {v5}, Lcom/xiaomi/mistatistic/sdk/data/b;->e()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_79

    .line 259
    :cond_8d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "url"

    .line 260
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 261
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5e

    .line 265
    :cond_a0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    :cond_a7
    return-void

    :cond_a8
    :goto_a8
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 221
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "https://data.mistat.xiaomi.com/micrash"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "https://data.mistat.xiaomi.com/mistats"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "http://data.mistat.xiaomi.com/mistats/v2"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "http://abtest.mistat.xiaomi.com/experiments"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    return p1
.end method

.method private f()Ljava/lang/String;
    .registers 2

    .line 216
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "http://10.99.168.145:8097/realtime_network"

    goto :goto_b

    :cond_9
    const-string v0, "https://data.mistat.xiaomi.com/realtime_network"

    :goto_b
    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/controller/a;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Lcom/xiaomi/mistatistic/sdk/controller/a;

    return-void
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/data/b;)V
    .registers 6

    .line 178
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    const-string p1, "add http event without initialization."

    .line 180
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_c
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "disabled the http event upload"

    .line 184
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_18
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->c()Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 191
    :cond_29
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Lcom/xiaomi/mistatistic/sdk/controller/a;

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 192
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Lcom/xiaomi/mistatistic/sdk/controller/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)Lcom/xiaomi/mistatistic/sdk/data/b;

    move-result-object p1

    :cond_41
    if-eqz p1, :cond_8e

    .line 194
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 195
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    monitor-enter v0

    .line 196
    :try_start_50
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_65

    .line 198
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 200
    :cond_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_8b

    .line 201
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Landroid/os/Handler;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 202
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 203
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 204
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->e()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8e

    :catchall_8b
    move-exception p1

    .line 200
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p1

    :cond_8e
    :goto_8e
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "app_id"

    .line 271
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_package"

    .line 272
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_key"

    .line 273
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_uuid"

    .line 274
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v2}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_os"

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_model"

    .line 276
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version"

    .line 277
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk_version"

    const-string v2, "1.9.19"

    .line 278
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_channel"

    .line 279
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "net_value"

    .line 281
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    .line 286
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "data"

    .line 287
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "sample_rate"

    const/16 v1, 0x2710

    .line 288
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "delay"

    const v2, 0x493e0

    .line 289
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ban_time"

    const-wide/16 v3, 0x0

    .line 290
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 291
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    const-string v4, "rt_upload_rate"

    invoke-static {p1, v4, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 292
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "rt_upload_delay"

    int-to-long v4, v1

    invoke-static {p1, v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 293
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "rt_ban_time"

    invoke-static {p1, v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 294
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "rt_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_50
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/b;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    monitor-enter v0

    .line 77
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public c()Z
    .registers 7

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_ban_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_32

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    .line 161
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_upload_rate"

    const/16 v4, 0x2710

    .line 160
    invoke-static {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_32

    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 7

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_update_time"

    const-wide/16 v4, 0x0

    .line 172
    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public e()J
    .registers 5

    .line 211
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_upload_delay"

    const-wide/32 v2, 0x493e0

    .line 210
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

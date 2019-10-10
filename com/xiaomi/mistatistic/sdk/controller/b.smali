.class public Lcom/xiaomi/mistatistic/sdk/controller/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static volatile c:Lcom/xiaomi/mistatistic/sdk/controller/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    :try_start_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    const-string v1, "ABTestManager initialize  Exception:"

    .line 52
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/b;)Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/controller/b;
    .registers 2

    const-class v0, Lcom/xiaomi/mistatistic/sdk/controller/b;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/b;

    if-nez v1, :cond_e

    .line 58
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/b;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/b;-><init>()V

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/b;

    .line 60
    :cond_e
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 56
    monitor-exit v0

    throw v1
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "status"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(II)V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private a(ILjava/lang/Boolean;)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isAbTest"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(J)V
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    const-string v1, "deploy_last_time"

    invoke-static {v0, v1, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 2

    .line 23
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(Landroid/content/Context;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/b;Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .line 90
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errorCode"

    .line 91
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_7b

    :cond_14
    const-string p1, "result"

    .line 96
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(J)V

    if-eqz p1, :cond_a5

    .line 98
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a5

    const/4 v0, 0x0

    .line 99
    :goto_2a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_a5

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "experiment_id"

    .line 101
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "status"

    .line 102
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "isAbTest"

    .line 103
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 104
    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(II)V

    .line 105
    invoke-direct {p0, v2, v4}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(ILjava/lang/Boolean;)V

    const-string v3, "content"

    .line 107
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 108
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_78

    .line 109
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-direct {p0, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_7b
    :goto_7b
    const-string p1, "ABTEST"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to getServiceDate the error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(J)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9d

    goto :goto_a5

    :catch_9d
    move-exception p1

    const-string v0, "ABTEST"

    const-string v1, "Error to getControlVarValue the exception "

    .line 120
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method private static a(ILjava/util/HashMap;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 217
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_a

    return v0

    :cond_a
    const-string p1, "ABTEST"

    const-string v1, "AbTest local configuration has not been completed exid:%d"

    .line 220
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 8

    .line 341
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "app_id"

    .line 342
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_id"

    .line 343
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk_version"

    const-string v2, "1.9.19"

    .line 345
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_27
    const-string v1, "http://abtest.mistat.xiaomi.com/experiments"

    .line 348
    invoke-static {p0, v1, v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_55

    :catch_2d
    move-exception v0

    .line 350
    sget v1, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:I

    const-string v1, "ABTEST"

    const-string v3, "retry %d, failed to getServiceDate, exception "

    .line 351
    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_53

    .line 353
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(Landroid/content/Context;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    goto :goto_55

    .line 355
    :cond_53
    sput v5, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:I

    :goto_55
    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .registers 5

    .line 209
    invoke-direct {p0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 212
    :cond_7
    new-instance p2, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string v0, "mistat_metrics"

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    return-void
.end method

.method private b(I)Z
    .registers 6

    const/4 v0, 0x0

    .line 170
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3a

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    goto :goto_3a

    .line 175
    :cond_1a
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isAbTest"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_3b

    if-eqz p1, :cond_39

    return v2

    :cond_39
    return v0

    :cond_3a
    :goto_3a
    return v0

    :catch_3b
    move-exception p1

    const-string v1, "ABTEST"

    const-string v2, "Exception in getControlVarValue"

    .line 182
    invoke-static {v1, v2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private c(I)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_38

    array-length v1, v2

    const/4 v4, 0x1

    if-le v1, v4, :cond_38

    const-string p1, "control_key"

    .line 287
    aget-object v1, v2, v3

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "control_value"

    .line 288
    aget-object v1, v2, v4

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "abtest_category"

    const-string v1, "mistat_abtest"

    .line 289
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 291
    :cond_38
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    const-string v4, "mistat_group"

    const-string v5, "[]"

    invoke-static {v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_89

    .line 293
    :goto_4d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_89

    .line 294
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "experiment_id"

    .line 295
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne p1, v4, :cond_7e

    const-string v4, "control_key"

    const-string v5, "control_key"

    .line 296
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "control_value"

    const-string v5, "control_value"

    .line 297
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "abtest_category"

    const-string v4, "mistat_group"

    .line 298
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7e} :catch_81

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :catch_81
    move-exception p1

    const-string v1, "ABTEST"

    const-string v2, "getGroupData exception"

    .line 304
    invoke-static {v1, v2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    const-string v1, "mistat_group"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 313
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 315
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 317
    :goto_25
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 318
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "experiment_id"

    .line 319
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 321
    :cond_41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "experiment_id"

    .line 322
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "control_key"

    .line 323
    invoke-virtual {v1, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "control_value"

    .line 324
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6a

    :cond_5b
    const-string v0, "experiment_id"

    .line 327
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "control_key"

    .line 328
    invoke-virtual {v1, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "control_value"

    .line 329
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_6a
    :goto_6a
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 332
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    const-string p2, "mistat_group"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    goto :goto_81

    :catch_79
    move-exception p1

    const-string p2, "ABTEST"

    const-string p3, "updatePreGroups exception"

    .line 334
    invoke-static {p2, p3, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_81
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6f

    const/4 v3, 0x3

    if-ne v0, v3, :cond_15

    goto :goto_6f

    .line 134
    :cond_15
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string p1, "ABTEST"

    const-string p2, "experimentId can\'t find object"

    .line 137
    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_2f
    const-string v4, "-"

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 140
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v1, :cond_5d

    aget-object v5, v4, v2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    if-ne v0, v6, :cond_5a

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(Ljava/lang/String;I)V

    .line 147
    :cond_5a
    aget-object p1, v4, v1

    return-object p1

    :cond_5d
    const-string p1, "ABTEST"

    const-string v0, "\u5206\u7ec4\u5f02\u5e38 controlKey \u4e0d\u5339\u914d:%s---%s"

    .line 149
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_6f
    :goto_6f
    const-string p1, "ABTEST"

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Three do not need to get group state:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_8e

    :catch_86
    move-exception p1

    const-string p2, "ABTEST"

    const-string v0, "Exception in getControlVarValue"

    .line 154
    invoke-static {p2, v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8e
    return-object p3
.end method

.method public a(Ljava/lang/String;I)V
    .registers 11

    .line 226
    invoke-direct {p0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 229
    :cond_7
    invoke-direct {p0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/b;->c(I)Ljava/util/HashMap;

    move-result-object v7

    .line 230
    invoke-static {p2, v7}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(ILjava/util/HashMap;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 231
    new-instance p2, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string v2, "mistat_metrics"

    const-string v3, "event"

    const-wide/16 v5, 0x1

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 232
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    :cond_21
    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 13

    .line 237
    invoke-direct {p0, p4}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 240
    :cond_7
    invoke-direct {p0, p4}, Lcom/xiaomi/mistatistic/sdk/controller/b;->c(I)Ljava/util/HashMap;

    move-result-object v7

    .line 241
    invoke-static {p4, v7}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(ILjava/util/HashMap;)Z

    move-result p4

    if-eqz p4, :cond_20

    .line 242
    new-instance p4, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string v2, "mistat_metrics"

    const-string v3, "count"

    move-object v1, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 243
    invoke-static {p4}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    :cond_20
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 248
    invoke-direct {p0, p3}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 251
    :cond_7
    invoke-direct {p0, p3}, Lcom/xiaomi/mistatistic/sdk/controller/b;->c(I)Ljava/util/HashMap;

    move-result-object v6

    .line 252
    invoke-static {p3, v6}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(ILjava/util/HashMap;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 253
    new-instance p3, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string v2, "mistat_metrics"

    const-string v3, "property"

    move-object v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    invoke-static {p3}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    :cond_20
    return-void
.end method

.method public b()V
    .registers 10

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Landroid/content/Context;

    const-string v1, "deploy_last_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "ABTEST"

    const-string v5, "abTest check config lastTime %d"

    const/4 v6, 0x1

    .line 66
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, v2

    if-eqz v2, :cond_35

    const-wide/32 v2, 0x1b7740

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_35

    :cond_2d
    const-string v0, "ABTEST"

    const-string v1, "Not to update the time, from local cached data"

    .line 81
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 68
    :cond_35
    :goto_35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/a$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception v0

    const-string v1, "updateABTestConfig Exception:"

    .line 84
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_49
    return-void
.end method

.method public b(Ljava/lang/String;JI)V
    .registers 13

    .line 259
    invoke-direct {p0, p4}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 262
    :cond_7
    invoke-direct {p0, p4}, Lcom/xiaomi/mistatistic/sdk/controller/b;->c(I)Ljava/util/HashMap;

    move-result-object v7

    .line 263
    invoke-static {p4, v7}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(ILjava/util/HashMap;)Z

    move-result p4

    if-eqz p4, :cond_20

    .line 264
    new-instance p4, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string v2, "mistat_metrics"

    const-string v3, "numeric"

    move-object v1, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 265
    invoke-static {p4}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    :cond_20
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 270
    invoke-direct {p0, p3}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 274
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string v2, "mistat_metrics"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/b;->c(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

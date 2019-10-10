.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;IZ)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    .line 62
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    .line 63
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    .line 65
    iput-boolean p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "seed:%s-%s-%s"

    const/4 v1, 0x3

    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 166
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "data"

    .line 155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "delay"

    .line 156
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "delay"

    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 158
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(J)V

    :cond_1f
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "RDUJ"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload complete, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_11

    const-string v2, ""

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 133
    :try_start_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 134
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lorg/json/JSONObject;)V

    const-string v1, "ok"

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string p1, "test ok"

    const-string v1, "reason"

    .line 137
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 138
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()V

    goto :goto_58

    .line 140
    :cond_51
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->d()V

    :goto_58
    const/4 p1, 0x1

    return p1

    .line 144
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result status isn\'t ok, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->c(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6e} :catch_6f

    goto :goto_75

    :catch_6f
    move-exception p1

    const-string v0, "parseUploadingResult exception "

    .line 147
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_75
    :goto_75
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 12

    const/4 v0, 0x0

    .line 71
    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->g()I

    move-result v1

    .line 72
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->f()J

    move-result-wide v2

    .line 73
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 74
    iget-boolean v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    if-eqz v5, :cond_23

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    :cond_23
    new-instance v5, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v5}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v5

    .line 76
    :goto_2c
    iget-boolean v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v6, :cond_43

    .line 77
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result v6

    if-nez v6, :cond_41

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result v6

    if-eqz v6, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v6, 0x1

    goto :goto_44

    :cond_41
    :goto_41
    const/4 v6, 0x2

    goto :goto_44

    :cond_43
    const/4 v6, 0x0

    :goto_44
    const-string v9, "app_id"

    .line 85
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "app_key"

    .line 86
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "device_id"

    .line 87
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "id_type"

    .line 88
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "channel"

    .line 89
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->d()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "policy"

    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "interval"

    .line 91
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sdk_version"

    const-string v9, "1.9.19"

    .line 92
    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "upload policy:%d, upload interval:%d, mistat upload version:%d, upload %d events."

    const/4 v9, 0x4

    .line 93
    new-array v10, v9, [Ljava/lang/Object;

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v7

    const/4 v1, 0x3

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    .line 93
    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bc

    const-string v2, "version"

    .line 98
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    const-string v1, "RDUJ"

    const-string v2, "stat_value:%s"

    .line 100
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    aput-object v6, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-direct {p0, v1, v2, v5}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stat_value"

    .line 105
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mistatv"

    .line 106
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "size"

    .line 107
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->a()Z

    move-result v1

    if-eqz v1, :cond_101

    const-string v1, "http://10.235.124.13:8097/mistats"

    goto :goto_103

    :cond_101
    const-string v1, "http://data.mistat.xiaomi.com/mistats/v2"

    .line 111
    :goto_103
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)V

    invoke-static {v1, v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10b} :catch_10c

    goto :goto_12e

    :catch_10c
    move-exception v1

    const-string v2, "RDUJ"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteDataUploadJob exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    iget-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    invoke-interface {v1, v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;->a(ZZ)V

    :goto_12e
    return-void
.end method

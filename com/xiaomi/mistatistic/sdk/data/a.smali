.class public abstract Lcom/xiaomi/mistatistic/sdk/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->b:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->a:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/a;
    .registers 9

    const/4 v0, 0x0

    .line 59
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "category"

    .line 63
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "key"

    .line 64
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "type"

    .line 65
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "value"

    .line 66
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "params"

    .line 68
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 71
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/data/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    move-object v7, v1

    goto :goto_2d

    :cond_2c
    move-object v7, v0

    :goto_2d
    const-string v1, "count"

    .line 74
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 75
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/f;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_6f

    :cond_40
    const-string v1, "event"

    .line 76
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 77
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {p0, v3, v4, v7}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6f

    :cond_4e
    const-string v1, "numeric"

    .line 78
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 79
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/j;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_6f

    :cond_60
    const-string v1, "property"

    .line 80
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 81
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/k;

    invoke-direct {p0, v3, v4, v2}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6d} :catch_70

    goto :goto_6f

    :cond_6e
    move-object p0, v0

    :goto_6f
    return-object p0

    :catch_70
    move-exception p0

    const-string v1, ""

    .line 86
    invoke-static {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->b:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 32
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->a:J

    return-void
.end method

.method public abstract b()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract c()Lcom/xiaomi/mistatistic/sdk/data/c;
.end method

.method public d()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->b:I

    return v0
.end method

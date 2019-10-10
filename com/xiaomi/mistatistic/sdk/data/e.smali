.class public Lcom/xiaomi/mistatistic/sdk/data/e;
.super Lcom/xiaomi/mistatistic/sdk/data/a;
.source "SourceFile"


# instance fields
.field protected b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->e:Ljava/lang/String;

    .line 31
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    if-nez p6, :cond_15

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->f:Ljava/util/Map;

    goto :goto_1c

    .line 35
    :cond_15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->f:Ljava/util/Map;

    :goto_1c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->e:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    if-nez p5, :cond_11

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->f:Ljava/util/Map;

    goto :goto_18

    .line 47
    :cond_11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->f:Ljava/util/Map;

    :goto_18
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_34

    .line 84
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15

    .line 89
    :cond_29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2d} :catch_2e

    return-object p1

    :catch_2e
    move-exception p1

    const-string v0, "json error"

    .line 92
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "category"

    .line 59
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key"

    .line 60
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 61
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 62
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->f:Ljava/util/Map;

    if-eqz v1, :cond_31

    const-string v1, "params"

    .line 64
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->f:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4

    .line 71
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    .line 74
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 75
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->f:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaomi/mistatistic/sdk/data/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/e;->d()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

.class public abstract Lcom/xiaomi/mistatistic/sdk/data/i;
.super Lcom/xiaomi/mistatistic/sdk/data/a;
.source "SourceFile"


# instance fields
.field protected b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/i;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->c:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->d:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->b:J

    .line 35
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->c:Ljava/lang/String;

    const-string p2, "mistat_basic"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result p1

    if-eqz p1, :cond_23

    :cond_1f
    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/i;->a(I)V

    :cond_23
    if-nez p5, :cond_29

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    goto :goto_30

    .line 41
    :cond_29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    :goto_30
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

    .line 80
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
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

    .line 83
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15

    .line 85
    :cond_29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2d} :catch_2e

    return-object p1

    :catch_2e
    move-exception p1

    const-string v0, "json error"

    .line 88
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "category"

    .line 55
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key"

    .line 56
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 58
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    if-eqz v1, :cond_33

    const-string v1, "params"

    .line 60
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_33
    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4

    .line 67
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    .line 70
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 71
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/i;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    .line 72
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaomi/mistatistic/sdk/data/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/i;->d()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 100
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/i;

    if-nez v1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_a
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/i;

    .line 106
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/i;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/i;->d:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 108
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->b:J

    iget-wide v3, p1, Lcom/xiaomi/mistatistic/sdk/data/i;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    if-eqz v1, :cond_42

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/i;->e:Ljava/util/Map;

    .line 110
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_42
    return v0
.end method

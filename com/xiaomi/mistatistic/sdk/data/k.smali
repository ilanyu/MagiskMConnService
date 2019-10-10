.class public Lcom/xiaomi/mistatistic/sdk/data/k;
.super Lcom/xiaomi/mistatistic/sdk/data/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->c:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->d:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

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

    .line 26
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/k;->a(I)V

    :cond_23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "category"

    .line 38
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key"

    .line 39
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "property"

    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 41
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4

    .line 47
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    .line 50
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 51
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    const-string v1, "property"

    .line 52
    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/k;->d()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/k;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 67
    :cond_a
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/k;

    .line 69
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/k;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/k;->c:Ljava/lang/String;

    .line 70
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/k;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/data/k;->d:Ljava/lang/String;

    .line 71
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

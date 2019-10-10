.class public Lcom/xiaomi/mistatistic/sdk/data/l;
.super Lcom/xiaomi/mistatistic/sdk/data/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Long;

.field private d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->d:J

    .line 19
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_17
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/l;->a(I)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "mistat_pt"

    return-object v0
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->c:Ljava/lang/Long;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    .line 44
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 45
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4

    .line 51
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/l;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 53
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 54
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/l;->d()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

.method public e()J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->d:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->b:Ljava/lang/String;

    return-object v0
.end method

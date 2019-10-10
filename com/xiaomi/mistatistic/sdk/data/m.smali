.class public Lcom/xiaomi/mistatistic/sdk/data/m;
.super Lcom/xiaomi/mistatistic/sdk/data/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->c:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_13
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/m;->a(I)V

    :cond_17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "mistat_pv"

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "path"

    .line 31
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    .line 32
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4

    .line 38
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/m;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 40
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 41
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/m;->d()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

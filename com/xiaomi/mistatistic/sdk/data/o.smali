.class public Lcom/xiaomi/mistatistic/sdk/data/o;
.super Lcom/xiaomi/mistatistic/sdk/data/a;
.source "SourceFile"


# instance fields
.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    .line 23
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/data/o;->c:J

    .line 24
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/o;->b:J

    .line 25
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_13
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/o;->a(I)V

    :cond_17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "mistat_session_extra"

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "start"

    .line 38
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/o;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "autoEnd"

    .line 39
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/o;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4

    .line 45
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/o;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 47
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/o;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 48
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/o;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 49
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/o;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->f:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/o;->d()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

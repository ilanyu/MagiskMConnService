.class public Lcom/xiaomi/mistatistic/sdk/data/g;
.super Lcom/xiaomi/mistatistic/sdk/data/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "mistat_extra"

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4

    .line 26
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 28
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->b:J

    .line 29
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/g;->d()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->g:I

    return-object v0
.end method

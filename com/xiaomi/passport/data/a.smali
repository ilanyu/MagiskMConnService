.class public Lcom/xiaomi/passport/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaomi/passport/data/a;
    .registers 4

    .line 10
    new-instance v0, Lcom/xiaomi/passport/data/a;

    invoke-direct {v0}, Lcom/xiaomi/passport/data/a;-><init>()V

    const-string v1, "diagnosisDomain"

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/passport/data/a;->b:Ljava/lang/String;

    const-string v1, "dataCenterZone"

    .line 12
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/passport/data/a;->a:Ljava/lang/String;

    return-object v0
.end method

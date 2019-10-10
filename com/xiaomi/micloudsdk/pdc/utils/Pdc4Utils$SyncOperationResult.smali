.class public Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncOperationResult"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public f:J

.field public g:Lorg/json/JSONObject;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "reason"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    const-string v0, "description"

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    const-string v0, "code"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->d:I

    .line 83
    iget v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->d:I

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(I)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 84
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    const-string v0, "retriable"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 87
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-wide/32 v0, 0x493e0

    .line 88
    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    :cond_3f
    const-string v0, "data"

    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    return-void
.end method

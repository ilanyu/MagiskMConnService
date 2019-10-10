.class public Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncRecordBuilder"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lorg/json/JSONObject;

.field private g:[Lcom/xiaomi/opensdk/pdc/asset/b;

.field private h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/opensdk/pdc/j;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 4

    .line 67
    new-instance v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;-><init>()V

    .line 68
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/j;->a:J

    iput-wide v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->a:J

    .line 69
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->b:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->c:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->d:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->e:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->f:Lorg/json/JSONObject;

    .line 74
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    .line 75
    iget-object p0, p0, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    iput-object p0, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 3

    .line 80
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->a:J

    return-object p0
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->f:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a([Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    return-object p0
.end method

.method public a()Lcom/xiaomi/opensdk/pdc/j;
    .registers 12

    .line 120
    new-instance v10, Lcom/xiaomi/opensdk/pdc/j;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->a:J

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->f:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    iget-object v9, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

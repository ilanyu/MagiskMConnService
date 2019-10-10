.class Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;
.super Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncEndLogInfo"
.end annotation


# instance fields
.field private final b:Z

.field private final c:J

.field private final d:J

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZJJLjava/lang/String;)V
    .registers 8

    .line 93
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;-><init>(Ljava/lang/String;)V

    .line 94
    iput-boolean p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->b:Z

    .line 95
    iput-wide p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->c:J

    .line 96
    iput-wide p5, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->d:J

    if-nez p7, :cond_10

    const-string p1, ""

    .line 98
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->e:Ljava/lang/String;

    goto :goto_12

    .line 100
    :cond_10
    iput-object p7, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->e:Ljava/lang/String;

    :goto_12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->b:Z

    if-eqz v1, :cond_c

    const-string v1, "Success"

    goto :goto_e

    :cond_c
    const-string v1, "Error"

    .line 107
    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authority:"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "start:"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->c:J

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "end:"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->d:J

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "delta:"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->c:J

    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->d:J

    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "error:"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

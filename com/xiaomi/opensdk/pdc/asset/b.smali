.class public Lcom/xiaomi/opensdk/pdc/asset/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/asset/b;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->c:J

    .line 17
    iput-boolean p5, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 22
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/asset/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 23
    check-cast p1, Lcom/xiaomi/opensdk/pdc/asset/b;

    .line 24
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/asset/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-wide v2, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->c:J

    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/asset/b;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    :cond_25
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/asset/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssetEntity [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/asset/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/xiaomi/opensdk/pdc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lorg/json/JSONObject;

.field public final g:[Lcom/xiaomi/opensdk/pdc/asset/b;

.field public final h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V
    .registers 10

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/j;->a:J

    .line 20
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    .line 25
    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    .line 26
    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 15

    .line 31
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/j;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 37
    :cond_a
    check-cast p1, Lcom/xiaomi/opensdk/pdc/j;

    const/16 v2, 0x8

    .line 38
    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/xiaomi/opensdk/pdc/j;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    const/4 v8, 0x5

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    const/4 v9, 0x6

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const/4 v10, 0x7

    aput-object v4, v3, v10

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v11, p1, Lcom/xiaomi/opensdk/pdc/j;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    aput-object v0, v2, v5

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    aput-object v0, v2, v6

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    aput-object v0, v2, v7

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    aput-object v0, v2, v8

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    aput-object v0, v2, v9

    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    aput-object p1, v2, v10

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x8

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/j;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eTag="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/j;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; id="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; uniqueKey="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; parentId="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; type="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; status="

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->h:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; content="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    if-eqz v1, :cond_62

    .line 60
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/j;->g:[Lcom/xiaomi/opensdk/pdc/asset/b;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v2, :cond_67

    aget-object v4, v1, v3

    const-string v5, "; asset="

    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_62
    const-string v1, "; no assets"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

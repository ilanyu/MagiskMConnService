.class public Lcom/xiaomi/opensdk/pdc/UserProfile;
.super Lcom/xiaomi/opensdk/pdc/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "birthday"

.field static final b:Ljava/lang/String; = "gender"


# instance fields
.field public c:J

.field public d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/g;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/xiaomi/opensdk/pdc/UserProfile$Gender;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/g;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    .line 42
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-void
.end method


# virtual methods
.method a(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)I
    .registers 3

    .line 67
    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->a:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method a(I)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 59
    sget-object p1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->a:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object p1

    :cond_6
    if-nez p1, :cond_b

    .line 61
    sget-object p1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->b:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method a()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_14

    const-string v1, "birthday"

    .line 48
    iget-wide v2, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    :cond_14
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-eqz v1, :cond_23

    const-string v1, "gender"

    .line 52
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {p0, v2}, Lcom/xiaomi/opensdk/pdc/UserProfile;->a(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_23
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 72
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 73
    check-cast p1, Lcom/xiaomi/opensdk/pdc/UserProfile;

    .line 74
    iget-wide v2, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/UserProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile [birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

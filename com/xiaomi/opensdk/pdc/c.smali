.class public final Lcom/xiaomi/opensdk/pdc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/UploadOperation;


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/k;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_1b

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1b

    .line 21
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/c;->a:Lcom/xiaomi/opensdk/pdc/k;

    .line 22
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/c;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/c;->c:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/xiaomi/opensdk/pdc/c;->d:J

    return-void

    .line 19
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->b(Lcom/xiaomi/opensdk/pdc/c;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/c;->a()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 35
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->a:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->a(Lcom/xiaomi/opensdk/pdc/c;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->e:Lorg/json/JSONObject;

    .line 37
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Lcom/xiaomi/opensdk/pdc/k;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->a:Lcom/xiaomi/opensdk/pdc/k;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/c;->d:J

    return-wide v0
.end method

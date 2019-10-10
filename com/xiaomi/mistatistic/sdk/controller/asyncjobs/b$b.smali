.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

.field private c:Lorg/json/JSONArray;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;Lorg/json/JSONArray;JJI)V
    .registers 8

    .line 69
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c:Lorg/json/JSONArray;

    .line 71
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->d:J

    .line 72
    iput-wide p5, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->e:J

    .line 73
    iput p7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->e:J

    return-wide v0
.end method

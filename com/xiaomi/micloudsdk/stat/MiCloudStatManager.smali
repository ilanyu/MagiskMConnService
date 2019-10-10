.class public Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/xiaomi/micloudsdk/stat/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
    .registers 1

    .line 11
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;->a()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/micloudsdk/stat/a;)V
    .registers 3

    .line 17
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->c:Lcom/xiaomi/micloudsdk/stat/a;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a:Z

    .line 19
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->c:Lcom/xiaomi/micloudsdk/stat/a;

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/stat/a;->a()V

    .line 20
    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->b:Z

    .line 21
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->c:Lcom/xiaomi/micloudsdk/stat/a;

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/a;->b()V

    .line 22
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->c:Lcom/xiaomi/micloudsdk/stat/a;

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/a;->c()V

    .line 23
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->c:Lcom/xiaomi/micloudsdk/stat/a;

    invoke-interface {p1}, Lcom/xiaomi/micloudsdk/stat/a;->d()V

    return-void
.end method

.method public a(Ljava/lang/String;JJILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    .line 27
    iget-boolean v1, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a:Z

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->b:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->c:Lcom/xiaomi/micloudsdk/stat/a;

    if-eqz v1, :cond_19

    .line 28
    iget-object v2, v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->c:Lcom/xiaomi/micloudsdk/stat/a;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/xiaomi/micloudsdk/stat/a;->a(Ljava/lang/String;JJILjava/lang/String;)V

    :cond_19
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a:Z

    return v0
.end method

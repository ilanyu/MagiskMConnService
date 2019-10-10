.class public Lcom/xiaomi/mistatistic/sdk/c;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:Ljava/lang/String; = "type"

.field public static final g:Ljava/lang/String; = "StatEventPojo"

.field public static final h:Ljava/lang/String; = "key"

.field public static final i:Ljava/lang/String; = "category"

.field public static final j:Ljava/lang/String; = "newValue"

.field public static final k:Ljava/lang/String; = "timeStamp"

.field public static final l:Ljava/lang/String; = "startTime"

.field public static final m:Ljava/lang/String; = "endTime"


# instance fields
.field private n:Lcom/xiaomi/mistatistic/sdk/controller/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/c;)Lcom/xiaomi/mistatistic/sdk/controller/g;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/c;->n:Lcom/xiaomi/mistatistic/sdk/controller/g;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 44
    new-instance p1, Lcom/xiaomi/mistatistic/sdk/BaseService$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/mistatistic/sdk/BaseService$1;-><init>(Lcom/xiaomi/mistatistic/sdk/c;)V

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()V

    .line 39
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/c;->n:Lcom/xiaomi/mistatistic/sdk/controller/g;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    if-eqz p1, :cond_67

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_67

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "type"

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_67

    const-string p2, "type"

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    packed-switch p2, :pswitch_data_6a

    goto :goto_67

    :pswitch_1e
    const-string p2, "startTime"

    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    const-string v0, "endTime"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 90
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/c;->n:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(JJ)V

    goto :goto_67

    :pswitch_30
    const-string p2, "timeStamp"

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 85
    iget-object p3, p0, Lcom/xiaomi/mistatistic/sdk/c;->n:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->d(J)V

    goto :goto_67

    .line 81
    :pswitch_3c
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/c;->n:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->c()V

    goto :goto_67

    :pswitch_42
    const-string p2, "key"

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "category"

    .line 76
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "newValue"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/c;->n:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {v0, p2, p3, p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :pswitch_5a
    const-string p2, "StatEventPojo"

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/c;

    .line 72
    iget-object p2, p0, Lcom/xiaomi/mistatistic/sdk/c;->n:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    :cond_67
    :goto_67
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_42
        :pswitch_3c
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.class public Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;,
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;,
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;,
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;,
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public final i:Lcom/xiaomi/accountsdk/account/data/f;

.field public final j:Ljava/util/Calendar;

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public final p:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/f;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/f;",
            "Ljava/util/Calendar;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 69
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->a:Ljava/lang/String;

    move-object v1, p2

    .line 70
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b:Ljava/lang/String;

    move-object v1, p3

    .line 71
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->c:Ljava/lang/String;

    move-object v1, p4

    .line 72
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->d:Ljava/lang/String;

    move-object v1, p5

    .line 73
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->e:Ljava/lang/String;

    move-object v1, p6

    .line 74
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->f:Ljava/util/ArrayList;

    move-object v1, p7

    .line 75
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->g:Ljava/util/ArrayList;

    move-object v1, p8

    .line 76
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->h:Ljava/lang/String;

    move-object v1, p9

    .line 77
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->i:Lcom/xiaomi/accountsdk/account/data/f;

    move-object v1, p10

    .line 78
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->j:Ljava/util/Calendar;

    move v1, p11

    .line 79
    iput-boolean v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->k:Z

    move-object v1, p12

    .line 80
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->l:Ljava/lang/String;

    move-object v1, p13

    .line 81
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 82
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 83
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->o:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-object/from16 v1, p16

    .line 84
    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->p:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/f;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$1;)V
    .registers 18

    .line 17
    invoke-direct/range {p0 .. p16}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/f;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 3

    .line 17
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 17
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 4

    if-eqz p0, :cond_17

    .line 418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 419
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 420
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_17

    .line 421
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_17
    return p2
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_13

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 409
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 410
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 411
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

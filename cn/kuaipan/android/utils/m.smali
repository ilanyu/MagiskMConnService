.class public Lcn/kuaipan/android/utils/m;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/utils/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;",
        "Lcn/kuaipan/android/utils/e;"
    }
.end annotation


# static fields
.field private static final a:J = 0x482e972b8c109b80L

.field private static final b:I = 0x1f4

.field private static c:Ljava/lang/Object;

.field private static d:Lcn/kuaipan/android/utils/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/m<",
            "**>;"
        }
    .end annotation
.end field

.field private static e:I


# instance fields
.field private f:Lcn/kuaipan/android/utils/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/m<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/m;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 14
    sput v0, Lcn/kuaipan/android/utils/m;->e:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    return-void
.end method

.method private constructor <init>(IF)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static b()Lcn/kuaipan/android/utils/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/kuaipan/android/utils/m<",
            "TK;TV;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcn/kuaipan/android/utils/m;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/m;->d:Lcn/kuaipan/android/utils/m;

    if-eqz v1, :cond_1b

    .line 23
    sget-object v1, Lcn/kuaipan/android/utils/m;->d:Lcn/kuaipan/android/utils/m;

    .line 24
    iget-object v2, v1, Lcn/kuaipan/android/utils/m;->f:Lcn/kuaipan/android/utils/m;

    sput-object v2, Lcn/kuaipan/android/utils/m;->d:Lcn/kuaipan/android/utils/m;

    const/4 v2, 0x0

    .line 25
    iput-object v2, v1, Lcn/kuaipan/android/utils/m;->f:Lcn/kuaipan/android/utils/m;

    .line 26
    sget v2, Lcn/kuaipan/android/utils/m;->e:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcn/kuaipan/android/utils/m;->e:I

    .line 27
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/m;->clear()V

    .line 28
    monitor-exit v0

    return-object v1

    .line 30
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 31
    new-instance v0, Lcn/kuaipan/android/utils/m;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/m;-><init>()V

    return-object v0

    :catchall_22
    move-exception v1

    .line 30
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 36
    sget-object v0, Lcn/kuaipan/android/utils/m;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    sget v1, Lcn/kuaipan/android/utils/m;->e:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_15

    .line 38
    sget v1, Lcn/kuaipan/android/utils/m;->e:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/kuaipan/android/utils/m;->e:I

    .line 39
    sget-object v1, Lcn/kuaipan/android/utils/m;->d:Lcn/kuaipan/android/utils/m;

    iput-object v1, p0, Lcn/kuaipan/android/utils/m;->f:Lcn/kuaipan/android/utils/m;

    .line 40
    sput-object p0, Lcn/kuaipan/android/utils/m;->d:Lcn/kuaipan/android/utils/m;

    .line 43
    :cond_15
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/m;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    instance-of v3, v2, Lcn/kuaipan/android/utils/e;

    if-eqz v3, :cond_1d

    .line 45
    check-cast v2, Lcn/kuaipan/android/utils/e;

    invoke-interface {v2}, Lcn/kuaipan/android/utils/e;->a()V

    goto :goto_1d

    .line 48
    :cond_31
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/m;->clear()V

    .line 49
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

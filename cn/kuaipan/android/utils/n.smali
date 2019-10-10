.class public Lcn/kuaipan/android/utils/n;
.super Ljava/util/LinkedList;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/utils/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;",
        "Lcn/kuaipan/android/utils/e;"
    }
.end annotation


# static fields
.field private static final a:J = 0x59f8f30bbe1eddd3L

.field private static final b:I = 0x50

.field private static c:Ljava/lang/Object;

.field private static d:Lcn/kuaipan/android/utils/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/n<",
            "*>;"
        }
    .end annotation
.end field

.field private static e:I


# instance fields
.field private f:Lcn/kuaipan/android/utils/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/n<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/n;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 14
    sput v0, Lcn/kuaipan/android/utils/n;->e:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static b()Lcn/kuaipan/android/utils/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/kuaipan/android/utils/n<",
            "TE;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcn/kuaipan/android/utils/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/n;->d:Lcn/kuaipan/android/utils/n;

    if-eqz v1, :cond_1b

    .line 23
    sget-object v1, Lcn/kuaipan/android/utils/n;->d:Lcn/kuaipan/android/utils/n;

    .line 24
    iget-object v2, v1, Lcn/kuaipan/android/utils/n;->f:Lcn/kuaipan/android/utils/n;

    sput-object v2, Lcn/kuaipan/android/utils/n;->d:Lcn/kuaipan/android/utils/n;

    const/4 v2, 0x0

    .line 25
    iput-object v2, v1, Lcn/kuaipan/android/utils/n;->f:Lcn/kuaipan/android/utils/n;

    .line 26
    sget v2, Lcn/kuaipan/android/utils/n;->e:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcn/kuaipan/android/utils/n;->e:I

    .line 27
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/n;->clear()V

    .line 28
    monitor-exit v0

    return-object v1

    .line 30
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 31
    new-instance v0, Lcn/kuaipan/android/utils/n;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/n;-><init>()V

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
    sget-object v0, Lcn/kuaipan/android/utils/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    sget v1, Lcn/kuaipan/android/utils/n;->e:I

    const/16 v2, 0x50

    if-ge v1, v2, :cond_15

    .line 38
    sget v1, Lcn/kuaipan/android/utils/n;->e:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/kuaipan/android/utils/n;->e:I

    .line 39
    sget-object v1, Lcn/kuaipan/android/utils/n;->d:Lcn/kuaipan/android/utils/n;

    iput-object v1, p0, Lcn/kuaipan/android/utils/n;->f:Lcn/kuaipan/android/utils/n;

    .line 40
    sput-object p0, Lcn/kuaipan/android/utils/n;->d:Lcn/kuaipan/android/utils/n;

    .line 43
    :cond_15
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/n;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    instance-of v3, v2, Lcn/kuaipan/android/utils/e;

    if-eqz v3, :cond_19

    .line 45
    check-cast v2, Lcn/kuaipan/android/utils/e;

    invoke-interface {v2}, Lcn/kuaipan/android/utils/e;->a()V

    goto :goto_19

    .line 48
    :cond_2d
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/n;->clear()V

    .line 49
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

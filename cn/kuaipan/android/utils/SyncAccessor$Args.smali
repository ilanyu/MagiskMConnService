.class public Lcn/kuaipan/android/utils/SyncAccessor$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/SyncAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# static fields
.field private static e:Ljava/lang/Object; = null

.field private static f:Lcn/kuaipan/android/utils/SyncAccessor$Args; = null

.field private static g:I = 0x0

.field private static final h:I = 0xa


# instance fields
.field public volatile a:Z

.field public b:[Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/RuntimeException;

.field private i:Lcn/kuaipan/android/utils/SyncAccessor$Args;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 17
    sput v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->g:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->a:Z

    return-void
.end method

.method public static a()Lcn/kuaipan/android/utils/SyncAccessor$Args;
    .registers 3

    .line 24
    sget-object v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->f:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    if-eqz v1, :cond_12

    .line 26
    sget-object v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->f:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 27
    iget-object v2, v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->i:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    sput-object v2, Lcn/kuaipan/android/utils/SyncAccessor$Args;->f:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    const/4 v2, 0x0

    .line 28
    iput-object v2, v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->i:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 29
    monitor-exit v0

    return-object v1

    .line 31
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 32
    new-instance v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/SyncAccessor$Args;-><init>()V

    return-object v0

    :catchall_19
    move-exception v1

    .line 31
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->b:[Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->c:Ljava/lang/Object;

    .line 49
    iput-object v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->d:Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->a:Z

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .line 36
    sget-object v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    sget v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->g:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    .line 38
    invoke-direct {p0}, Lcn/kuaipan/android/utils/SyncAccessor$Args;->c()V

    .line 40
    sget-object v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->f:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    iput-object v1, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->i:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 41
    sput-object p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->f:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 43
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

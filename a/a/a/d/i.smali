.class La/a/a/d/i;
.super La/a/a/d/h;
.source "SourceFile"


# static fields
.field private static final a:La/a/a/d/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, La/a/a/d/f;

    invoke-direct {v0}, La/a/a/d/f;-><init>()V

    sput-object v0, La/a/a/d/i;->a:La/a/a/d/f;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, La/a/a/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/SyncResult;)Z
    .registers 7

    .line 12
    sget-object v0, La/a/a/d/i;->a:La/a/a/d/f;

    invoke-virtual {v0, p1}, La/a/a/d/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 14
    iget-object p2, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroid/content/SyncStats;->numAuthExceptions:J

    :cond_11
    return p1
.end method

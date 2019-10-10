.class public Lcom/android/volley/q;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/volley/i;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/volley/q;->a:Lcom/android/volley/i;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/i;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/volley/q;->a:Lcom/android/volley/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/volley/q;->a:Lcom/android/volley/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/volley/q;->a:Lcom/android/volley/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/volley/q;->a:Lcom/android/volley/i;

    return-void
.end method


# virtual methods
.method a(J)V
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/android/volley/q;->b:J

    return-void
.end method

.method public b()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/android/volley/q;->b:J

    return-wide v0
.end method

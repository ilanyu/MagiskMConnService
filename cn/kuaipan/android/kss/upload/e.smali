.class Lcn/kuaipan/android/kss/upload/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# static fields
.field private static final ac:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ad:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ae:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final W:Ljava/lang/String;

.field public X:J

.field public Y:J

.field public final Z:Ljava/lang/String;

.field public final aa:Ljava/lang/String;

.field public ab:Lcn/kuaipan/android/kss/upload/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/kuaipan/android/kss/upload/e;->ad:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/kuaipan/android/kss/upload/e;->ae:Ljava/util/HashSet;

    .line 51
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_FILE_META"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_BLOCK_META"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_UPLOAD_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_CHUNK_POS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_CHUNK_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    const-string v1, "ERR_CHUNK_OUT_OF_RANGE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ad:Ljava/util/HashSet;

    const-string v1, "ERR_CHUNK_CORRUPTED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ad:Ljava/util/HashSet;

    const-string v1, "ERR_SERVER_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ad:Ljava/util/HashSet;

    const-string v1, "ERR_STORAGE_REQUEST_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ad:Ljava/util/HashSet;

    const-string v1, "ERR_STORAGE_REQUEST_FAILED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ae:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_FILE_META"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ae:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_BLOCK_META"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcn/kuaipan/android/kss/upload/e;->ae:Ljava/util/HashSet;

    const-string v1, "ERR_INVALID_UPLOAD_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .registers 7

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CONTINUE_UPLOAD"

    .line 19
    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    .line 20
    iput-wide p1, p0, Lcn/kuaipan/android/kss/upload/e;->X:J

    .line 21
    iput-wide p3, p0, Lcn/kuaipan/android/kss/upload/e;->Y:J

    .line 22
    iput-object p5, p0, Lcn/kuaipan/android/kss/upload/e;->Z:Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/e;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stat"

    .line 27
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    const-string v0, "next_pos"

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuaipan/android/kss/upload/e;->X:J

    const-string v0, "left_bytes"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/e;->Y:J

    const-string v0, "upload_id"

    .line 30
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->Z:Ljava/lang/String;

    const-string v0, "commit_meta"

    .line 31
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/e;->aa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    const-string v0, "BLOCK_COMPLETED"

    .line 35
    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 3

    const-string v0, "CONTINUE_UPLOAD"

    .line 39
    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .line 71
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_c
    sget-object v1, Lcn/kuaipan/android/kss/upload/e;->ad:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    .line 76
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_c
    sget-object v1, Lcn/kuaipan/android/kss/upload/e;->ac:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 3

    const-string v0, "ERR_BLOCK_CORRUPTED"

    .line 81
    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 3

    .line 85
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_c
    sget-object v1, Lcn/kuaipan/android/kss/upload/e;->ae:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

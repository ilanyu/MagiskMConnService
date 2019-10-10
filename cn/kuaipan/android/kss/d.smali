.class public interface abstract Lcn/kuaipan/android/kss/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "chunk_pos"

.field public static final B:Ljava/lang/String; = "body_sum"

.field public static final C:Ljava/lang/String; = "next_pos"

.field public static final D:Ljava/lang/String; = "left_bytes"

.field public static final E:Ljava/lang/String; = "upload_id"

.field public static final F:Ljava/lang/String; = "OK"

.field public static final G:Ljava/lang/String; = "autoCommit"

.field public static final H:Ljava/lang/String; = "FILE_EXISTED"

.field public static final I:Ljava/lang/String; = "CONTINUE_UPLOAD"

.field public static final J:Ljava/lang/String; = "BLOCK_COMPLETED"

.field public static final K:Ljava/lang/String; = "ERR_INVALID_FILE_META"

.field public static final L:Ljava/lang/String; = "ERR_INVALID_BLOCK_META"

.field public static final M:Ljava/lang/String; = "ERR_INVALID_UPLOAD_ID"

.field public static final N:Ljava/lang/String; = "ERR_INVALID_CHUNK_POS"

.field public static final O:Ljava/lang/String; = "ERR_INVALID_CHUNK_SIZE"

.field public static final P:Ljava/lang/String; = "ERR_CHUNK_OUT_OF_RANGE"

.field public static final Q:Ljava/lang/String; = "ERR_CHUNK_CORRUPTED"

.field public static final R:Ljava/lang/String; = "ERR_BLOCK_CORRUPTED"

.field public static final S:Ljava/lang/String; = "ERR_SERVER_EXCEPTION"

.field public static final T:Ljava/lang/String; = "ERR_STORAGE_REQUEST_ERROR"

.field public static final U:Ljava/lang/String; = "ERR_STORAGE_REQUEST_FAILED"

.field public static final V:Ljava/lang/String; = "ERR_TOO_MANY_CURRENT_BLOCKS"

.field public static final a:J = 0x5265c00L

.field public static final b:J = 0x36ee80L

.field public static final c:J = 0x516bc00L

.field public static final d:J = 0x400000L

.field public static final e:J = 0x10000L

.field public static final f:J

.field public static final g:I = 0x3

.field public static final h:Ljava/lang/String; = "/upload_block_chunk"

.field public static final i:Ljava/lang/String; = "sha1"

.field public static final j:Ljava/lang/String; = "md5"

.field public static final k:Ljava/lang/String; = "size"

.field public static final l:Ljava/lang/String; = "block_infos"

.field public static final m:Ljava/lang/String; = "stat"

.field public static final n:Ljava/lang/String; = "node_urls"

.field public static final o:Ljava/lang/String; = "file_meta"

.field public static final p:Ljava/lang/String; = "block_metas"

.field public static final q:Ljava/lang/String; = "commit_metas"

.field public static final r:Ljava/lang/String; = "is_existed"

.field public static final s:Ljava/lang/String; = "commit_meta"

.field public static final t:Ljava/lang/String; = "block_meta"

.field public static final u:Ljava/lang/String; = "secure_key"

.field public static final v:Ljava/lang/String; = "blocks"

.field public static final w:Ljava/lang/String; = "sha1"

.field public static final x:Ljava/lang/String; = "size"

.field public static final y:Ljava/lang/String; = "urls"

.field public static final z:Ljava/lang/String; = "modify_time"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x400000

    .line 15
    invoke-static {v0, v1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcn/kuaipan/android/kss/d;->f:J

    return-void
.end method

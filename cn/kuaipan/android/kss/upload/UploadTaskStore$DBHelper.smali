.class Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/upload/UploadTaskStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBHelper"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DBHelper"

.field private static final b:Ljava/lang/String; = "ksssdk_infos.db"

.field private static final c:Ljava/lang/String; = "upload_chunks"

.field private static final d:I = 0x4

.field private static final e:Ljava/lang/String; = "task_hash"

.field private static final f:Ljava/lang/String; = "kss_file_info"

.field private static final g:Ljava/lang/String; = "kss_request"

.field private static final h:Ljava/lang/String; = "kss_upload_id"

.field private static final i:Ljava/lang/String; = "chunk_pos"

.field private static final j:Ljava/lang/String; = "gen_time"

.field private static final k:Ljava/lang/String; = "upload_id"

.field private static volatile l:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "%s<?"

    const-string v1, "gen_time"

    .line 137
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuaipan/android/utils/r;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->m:Ljava/lang/String;

    const-string v0, "task_hash"

    .line 139
    invoke-static {v0}, Lcn/kuaipan/android/utils/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->n:Ljava/lang/String;

    const-string v0, "chunk_pos"

    const-string v1, "upload_id"

    .line 140
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->o:[Ljava/lang/String;

    const-string v0, "kss_request"

    const-string v1, "kss_file_info"

    const-string v2, "kss_upload_id"

    const-string v3, "gen_time"

    .line 143
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->p:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ksssdk_infos.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 111
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .registers 3

    .line 94
    sget-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->l:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    if-nez v0, :cond_22

    .line 96
    const-class v1, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    monitor-enter v1

    .line 97
    :try_start_7
    sget-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->l:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    if-nez v0, :cond_1d

    if-eqz p0, :cond_15

    .line 102
    new-instance v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;-><init>(Landroid/content/Context;)V

    .line 103
    sput-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->l:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    goto :goto_1d

    .line 100
    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Context should not be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_1d
    :goto_1d
    monitor-exit v1

    goto :goto_22

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    :goto_22
    return-object v0
.end method


# virtual methods
.method public a(ILcn/kuaipan/android/kss/b;)Lcn/kuaipan/android/kss/upload/b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "upload_chunks"

    .line 180
    sget-object v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->p:[Ljava/lang/String;

    sget-object v3, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->n:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 181
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 180
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_79

    .line 185
    :try_start_1e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_79

    const-string v1, "kss_request"

    .line 186
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kss_file_info"

    .line 187
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gen_time"

    .line 188
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    goto :goto_6c

    .line 193
    :cond_4f
    invoke-interface {p2, v1}, Lcn/kuaipan/android/kss/b;->a(Ljava/lang/String;)Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object p2

    .line 194
    new-instance v0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    invoke-direct {v0, v2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v1, Lcn/kuaipan/android/kss/upload/b;

    invoke-direct {v1, v0, p2, v3, v4}, Lcn/kuaipan/android/kss/upload/b;-><init>(Lcn/kuaipan/android/kss/upload/UploadFileInfo;Lcn/kuaipan/android/kss/IKssUploadRequestResult;J)V

    const-string p2, "kss_upload_id"

    .line 196
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-virtual {v1, p2}, Lcn/kuaipan/android/kss/upload/b;->a(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_1e .. :try_end_6a} :catchall_72

    move-object v0, v1

    goto :goto_79

    :cond_6c
    :goto_6c
    if-eqz p1, :cond_71

    .line 202
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_71
    return-object v0

    :catchall_72
    move-exception p2

    if-eqz p1, :cond_78

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_78
    throw p2

    :cond_79
    :goto_79
    if-eqz p1, :cond_7e

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7e
    return-object v0
.end method

.method public a(I)Lcn/kuaipan/android/kss/upload/f;
    .registers 10

    .line 155
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "upload_chunks"

    .line 156
    sget-object v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->o:[Ljava/lang/String;

    sget-object v3, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->n:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 156
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 161
    :try_start_1b
    new-instance v0, Lcn/kuaipan/android/kss/upload/f;

    invoke-direct {v0}, Lcn/kuaipan/android/kss/upload/f;-><init>()V

    if-eqz p1, :cond_47

    .line 162
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "chunk_pos"

    .line 163
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "upload_id"

    .line 164
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 166
    iput-wide v1, v0, Lcn/kuaipan/android/kss/upload/f;->a:J

    .line 167
    iput-object v3, v0, Lcn/kuaipan/android/kss/upload/f;->b:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_4d

    :cond_47
    if-eqz p1, :cond_4c

    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4c
    return-object v0

    :catchall_4d
    move-exception v0

    if-eqz p1, :cond_53

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v0
.end method

.method public a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 212
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "task_hash"

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "kss_file_info"

    .line 214
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/b;->a()Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "kss_request"

    .line 215
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/b;->b()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p1, "kss_upload_id"

    const-string v1, ""

    .line 217
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_3d
    const-string p1, "kss_upload_id"

    .line 219
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    const-string p1, "chunk_pos"

    .line 221
    iget-wide v1, p3, Lcn/kuaipan/android/kss/upload/f;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    iget-object p1, p3, Lcn/kuaipan/android/kss/upload/f;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    const-string p1, "upload_id"

    const-string p3, ""

    .line 223
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_61
    const-string p1, "upload_id"

    .line 225
    iget-object p3, p3, Lcn/kuaipan/android/kss/upload/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    const-string p1, "gen_time"

    .line 227
    invoke-virtual {p2}, Lcn/kuaipan/android/kss/upload/b;->d()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "upload_chunks"

    const/4 p3, 0x0

    .line 231
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public a(J)V
    .registers 7

    .line 148
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "upload_chunks"

    .line 149
    sget-object v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->m:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 150
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public b(I)V
    .registers 7

    .line 235
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "upload_chunks"

    .line 237
    sget-object v2, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->n:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 237
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "task_hash"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL UNIQUE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kss_request"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " STRING NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kss_file_info"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " STRING NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kss_upload_id"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " STRING NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "chunk_pos"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "upload_id"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " STRING NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gen_time"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "upload_chunks"

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcn/kuaipan/android/utils/r;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p3, 0x4

    if-eq p2, p3, :cond_12

    const-string p2, "DBHelper"

    const-string p3, "Destroying all old data."

    .line 131
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TABLE IF EXISTS upload_chunks"

    .line 132
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_12
    return-void
.end method
